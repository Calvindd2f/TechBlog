---
title: PowerShell Deep Dive - Enhanced API calls and effective print debugging.
description: Me going over the ideal method to do API calls from powershell functions with effective EH and catching the correct response codes.
pubDate: Aug 30 2024
heroImage: /blog-placeholder-3.jpg
---

This is a new enough series I have created that goes over how I tend to structure API calls within powershell functions or at least a rough estimate. 

I usually don't employ print debugging unless necessary however this guide is to show the best approach on doing it. 

First and foremost the print debugging global variable needs to be Boolean and I tend to default it to `$false` until needed. In this example I have defined the print debugging variables as `$Global:MxSDebug`.

The print statements are just condition based on `$Global:MxSDebug`, the print does not wrap the actual code executing and only occurs before or after something happens. 

```powershell
if ($Global:MxSDebug) { 
# Print something relevant 
} 
```

I start out with printing the function called and the arguments but before this, I print a pretty formatted output for easier understanding.

```powershell
if ($Global:MxSDebug) { 
	Write-Host $("`r`n`r`n==FUNC==CALLED===== -->{0}<--     `r`n====ARGs=START======`r`n{1}`r`n====ARGs=END========`r`n" -f $MyInvocation.MyCommand, $(ConvertTo-Json $PSBoundParameters)) -ForegroundColor Yellow 
}
```

The  function and params + values

```powershell
if ($Global:MxSDebug) { Write-Host "========================= GetContact params email, query, companyid,: $email, $query, $companyid," }
```

This function performs a Get request for contacts in the connectwise api. The following code is a constructor for the actual API query string:

```powershell
if ($query -eq 'Name')
{
	$querystring = '?conditions=firstName="' + $($data.firstname) + '" AND lastName="' + $($data.lastname) + '"&company/id=' + $companyid
}
elseif ($query -eq 'Email')
{
	$querystring = '?childconditions=communicationItems/value="' + $($email) + '" AND communicationItems/communicationType="Email"' + '&conditions=company/id=' + $companyid
}
else
{
	if ($Global:MxSDebug) { Write-Host "========================= just before returning null" }
	return $null
}
if ($Global:MxSDebug) { Write-Host "========================= querystring: $querystring" }
```

The actual meat and my semi-default template for creating APIs follows suit, this logic does not include print debugging until the JSON result is returned so it can be printed.

I start off with `$success` as `$false` , a backoff timer of 30 seconds, a retry initializer, an array of HTTP response codes that will retry if returned and an array of absolute failure response codes.

```powershell
$success = $false
$WaitTime = 30
$RetryCount = 0    
$RetryCodes = @(503, 504, 520, 521, 522, 524)
$FailCodes = @(400, 404)
```

Unsurprisingly, a while loop is created based on the retry count and the success variable. This is immediately followed up by a try/catch statement.

```powershell
while ($RetryCount -lt $retry -and $success -eq $false)
{
	try
	{
	}
	
	catch
	{
	}
}
```





```powershell
Function GetContact($email, $query, $companyid, $userObjectToAction, $retry = 5)
{
    if ($Global:MxSDebug) { Write-Host $("`r`n`r`n==FUNC==CALLED===== -->{0}<--`r`n====ARGs=START======`r`n{1}`r`n====ARGs=END========`r`n" -f $MyInvocation.MyCommand, $(ConvertTo-Json $PSBoundParameters)) -ForegroundColor Yellow }
    if ($Global:MxSDebug) { Write-Host "========================= GetContact params email, query, companyid,: $email, $query, $companyid," }
    if ($query -eq 'Name')
    {
        $querystring = '?conditions=firstName="' + $($data.firstname) + '" AND lastName="' + $($data.lastname) + '"&company/id=' + $companyid
    }
    elseif ($query -eq 'Email')
    {
        # 2 things to note: 
        # 1. We should use equal query here for email as this is uniq identifier. With 'LIKE' query we may catch many similar emails:
        # like '%name@domain.com%' will get emails name@domain.com, myname@domain.com, name@domain.com.au ...
        # 2. For the LIKE query - if the searched value starts with a number - it may conflict with url encoding later once transfered over HTTP, so the
        # use of '%25' (which is actual url encoded value of '%') encouraged. 
        $querystring = '?childconditions=communicationItems/value="' + $($email) + '" AND communicationItems/communicationType="Email"' + '&conditions=company/id=' + $companyid
    }
    else
    {
        if ($Global:MxSDebug) { Write-Host "========================= just before returning null" }
        return $null
    }if ($Global:MxSDebug) { Write-Host "========================= querystring: $querystring" }

    
    $success = $false
    $WaitTime = 30
    $RetryCount = 0    
    $RetryCodes = @(503, 504, 520, 521, 522, 524)
    $FailCodes = @(400, 404)
    while ($RetryCount -lt $retry -and $success -eq $false)
    {
        try
        {
            $request = [System.Net.HttpWebRequest]::Create("$CW_Api_Url/apis/3.0/company/contacts$querystring")
        
            $request.Method = "GET";
            $request.ContentType = "application/json";
            $authBytes = [System.Text.Encoding]::UTF8.GetBytes($CW_Api_Token);
            $authStr = "Basic " + $([System.Convert]::ToBase64String($authBytes));
            $request.Headers["Authorization"] = $authStr;
            $request.Headers["clientId"] = $CW_Api_Client_Id;
            $request.Timeout = 10000
                
            $response = $request.GetResponse();
            $reader = new-object System.IO.StreamReader $response.GetResponseStream();
            $jsonResult = $reader.ReadToEnd();
            $response.Dispose();

            if ($Global:MxSDebug) { Write-Host "========================= JSON result from WEB(GetContact): $jsonResult" }
            [array]$returnedObject = $jsonResult | ConvertFrom-Json
            if ($Global:MxSDebug) { Write-Host "`r`n===================== Count of found objects: $($returnedObject.Count) `r`n" }
            if ($returnedObject.Count -gt 1)
            {
                foreach ($contactItem in $returnedObject)
                {
                    if ($Global:MxSDebug) { Write-Host "=====================ContactItem===> $($contactItem)" }
                    if ($Global:MxSDebug) { Write-Host "=====================ContactItem>>>> $($contactItem.id)" }
                    if ($Global:MxSDebug) { Write-Host "=====================ContactItem>>>> $($contactItem.firstName) Compare to $($userObjectToAction.firstName)" }
                    if ($Global:MxSDebug) { Write-Host "=====================ContactItem>>>> $($contactItem.lastName) Compare to $($userObjectToAction.lastName)" }
                    If (($contactItem.firstName -eq $userObjectToAction.firstName) -and ($contactItem.lastName -eq $userObjectToAction.lastName))
                    {
                        $success = $true
                        return $( $contactItem  )
                    }
                }
                $success = $true
                return $( $jsonResult | ConvertFrom-Json)
            }
            else
            {
                $success = $true
                return $( $jsonResult | ConvertFrom-Json)
            }
    
        }
        catch
        {
            if ($Global:MxSDebug) { Write-Host "========================= WARNING: $($_.Exception.Message)" }
            # Write-Host "========================= WARNING: $( ConvertTo-json $_.Exception)"
            # Geeting the actual numeric value for the error code.
            # When we run through MxS Env we will get nested InnerException inside the 
            # parent InnerException as we are utilising a HTTP WebClient Wrapper on top
            # of the MxS environment
            if ( Test-Path variable:global:psISE )
            {
                if ($Global:MxSDebug) { Write-Host "==================Running package locally for debugging===========" }
                $ErrorCode = $_.Exception.InnerException.Response.StatusCode.value__
            }
            else
            {
                if ($Global:MxSDebug) { Write-Host "========================= Running package in MxS" }
                $ErrorCode = $_.Exception.InnerException.InnerException.Response.StatusCode.value__
            }
            if ($Global:MxSDebug) { Write-Host "========================= Errorcode: $ErrorCode" }
            # Checking if we got any of Fail Codes
            if ($ErrorCode -in $FailCodes)
            {
                # Setting the variables to make activity Fail
                $success = $false;
                $activityOutput.success = $false;
                # If we need immediate stop - we can uncomment below.
                # Write-Error "CRITICAL: $($_.Exception.Message)" -ErrorAction Stop
                Write-Warning "Warning: $($_.Exception.Message)"
                return $null;
            }
            if ($ErrorCode -in $RetryCodes)
            {
                $RetryCount++

                if ($RetryCount -eq $retry)
                {
                    if ($Global:MxSDebug) { Write-host "========================= WARNING: Retry limit reached." }
                }
                else
                {
                    if ($Global:MxSDebug) { Write-host "========================= Waiting $WaitTime seconds." }
                    Start-Sleep -seconds $WaitTime
                    if ($Global:MxSDebug) { Write-host "========================= Retrying." }
                }

            }
            else
            {
                return $null;
            }
        }
    }
}
```