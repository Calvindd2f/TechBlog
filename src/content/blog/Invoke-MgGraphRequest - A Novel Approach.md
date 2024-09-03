---
title: Invoke-MgGraphRequest
description: Lorem ipsum dolor sit amet
pubDate: Jun 19 2024
heroImage: /blog-invoke-ps.jpg
---
So a solution I had put forth on a repository I had been contributing to for a while was accepted. The issue was primarily to do with resource exhaustion / out of memory on large datasets that were being retrieved using the Microsoft standard PowerShell modules.

While `just use API` wasn't feasible in the context of the module, the solution I put forth after much trial and error seemed to both achieve what I had speculated on doing in previous suggestions but also appeared to reap all of the benefits of using the API whilst doing so with delegated consent / permissions (no setup needed).

It allowed for full request control, actual pagination, delegated permissions and much more manipulation of request response than I had initially though. 
It was significantly easy to implement and from my own testing allowed for interoperability between both delegated / application which could be designated via a switch statement which only included a header and removed a cmdlet if present.

All the while it only depends on a single module, which also includes CMDlets that assist with replacing the module cmdlet with the respective API url.

I also didn't get to fully appreciate the performance gains until having to use it entirely myself (Usually down to another person at work, but I can do if needs be) where it was night and day.

That and the changes were applied to the majority of the codebase.

----------------------------------------------------------------

So here is some code to explain the process for ease of learning, with more complex usage for api pagination to follow.

Let's get all Microsoft Graph Users include their properties (in full, not just the object). For the avoidance of doubt, understand that the authentication context for each of these is `Connect-MgGraph` (Delegated Authentication).

```powershell
# Get all users with all properties
$users = Get-MgUser -All -Property *

# Convert each user object to a custom object with all properties
$userObjects = $users | ForEach-Object {
    $userProperties = @{}
    $_.PSObject.Properties | ForEach-Object {
        if ($_.Value -is [Microsoft.Graph.PowerShell.Models.MicrosoftGraphEntity] -or
            $_.Value -is [Microsoft.Graph.PowerShell.Models.MicrosoftGraphDirectoryObject]) {
            # For complex objects, convert them to a hashtable
            $userProperties[$_.Name] = $_.Value | ConvertTo-Json -Depth 10 | ConvertFrom-Json
        } else {
            $userProperties[$_.Name] = $_.Value
        }
    }
    [PSCustomObject]$userProperties
}

# Convert the result to JSON
$jsonOutput = $userObjects | ConvertTo-Json -Depth 10

# Output the JSON (you can also save it to a file if needed)
$jsonOutput
```

Now let's repeat this with the approach I've found, but first let's find the api resource path for the cmdlet via another cmdlet: 

```
┌──(c㉿CALVIN)-[C:\Users\c]
└─PS> find-mgGraphCommand -Command 'Get-MgUser'

   APIVersion: v1.0

Command    Module Method URI              OutputType          Permissions                                                                       Variants
-------    ------ ------ ---              ----------          -----------                                                                       --------
Get-MgUser Users  GET    /users/{user-id} IMicrosoftGraphUser {User.ReadBasic.All, User.ReadWrite, User.Read, Directory.Read.All…}              {Get, GetViaIdentity}
Get-MgUser Users  GET    /users           IMicrosoftGraphUser {User.ReadBasic.All, User.Read.All, Directory.ReadWrite.All, Directory.Read.All…} {List}
```

We now know that the respective URI is `/users` or to specify the user `/users/{uid}`.
This can be done programmatically via:

`$resolve=find-mgGraphCommand -Command 'Get-MgUser'`

`$uri=$resolve.URI[0]` for `/users/{uid}` 
or 
`$uri=$resolve.URI[1]` for `/users`

```powershell
$resolve=Find-mgGraphCommand -Command 'Get-MgUser'
$uri=$resolve.URI[1]
$base='https://graph.microsoft.com/v1.0'
$filter='?`$select=*'
$url="$base$uri$filter"


# OPTIONAL: Setup headers [DO NOT DO 'Authorization' over delegated. However this can be done if interop is implemented properly.]
$headers = @{
	"Content-Type" = "application/json"
}

# Init array 4 allusers
$allUsers = @()

# Paginate through all results 
do { 
	$response = Invoke-MgGraphRequest -Uri $Url -Headers $headers -Method Get
	
	$allUsers += $response.value
	
	$apiUrl = $response.'@odata.nextLink' 
} while ($apiUrl)

# Convert the result to JSON 
$jsonOutput = $allUsers | ConvertTo-Json -Depth 10

# Print to screen
$jsonOutput
```



**INSERT CLOSER AND FOCUS PART TWO ON THE OUTPUT TYPE AND UNIQUE ABILITIES OF THE HTTPRESPONSE PARAMETER (access token delegated, all other aspects of requests.)**

