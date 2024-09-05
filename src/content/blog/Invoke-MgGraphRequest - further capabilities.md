---
title: Invoke-MgGraphRequest - further capabilities
description: Lorem ipsum dolor sit amet
pubDate: Jul 07 2024
heroImage: /blog-powershell.jpg
tags: ['Graph','Entra','Powershell','Performance','Novel']
categories: ['Automation']
---
So to add onto the unique abilities of `Invoke-MgGraphRequest` , I have also found out a while after the first win was the unique capabilities of the `OutputType` parameter.

While only appearing able define to present the returned data in a specified format instead of the default (`PSObject`,`JSON`,`Hashtable`,`HTTPResponseMessage`)

![[Pasted image 20240830001814.png]]

The `HTTPResponseMessage` was significantly more deep than I had initially thought, after playing with it as a stored variable to see what it can be done for.

I believe I initially was incorporating it into error handling to check the response code - in which I would ditch the attempt if it was 404 or the 4/5 responses that graph outputs like 429 for rate-limiting.

Here is an example of exploring it further

`$response=Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/v1.0/auditLogs/signIns?``$filter=UserId eq 'C@lvin.ie'"  -OutputType HttpResponseMessage`

The output, detailing amongst many other things, includes something that would not be safe for work... for context this was over delegated consent using `Connect-MgGraph`

![[Pasted image 20240830002328.png]]

An access token. Something we all knew was involved somehow but never with the ability to see without the use of fiddler, burpsuite or similar & an understanding of how delegated commands (as in , via the modules and not true api calls) get formatted.

While this is cool, the Headers and Content are just as interesting.

**Headers**
![[Pasted image 20240830002604.png]]

**Content**
I initially began exploring content as I was testing a proof of concept for an Issue on github that seemed to originate from the graph module itself, with a ticket open regarding it. In the interim, I was playing around with retrieving the output as a Byte Stream asynchronously to stream into a file (for conversion after the request pagination) - while this ended up not working out as I had anticipated, the content key had seemed to have full async support as well as non-idiomatic methods which can be utilized:

![[Pasted image 20240830002948.png]]

The `Content.Headers` also had the Type, Encoding and Length included as well:

![[Pasted image 20240830003204.png]]

The abilities were a lot more reminiscent of run spaces for powershell which I've previously used in creation of a powershellexecutor in C# where performance and parallelism along with the rigors of C# are found, to clarify I am referring to the package `System.Management.Automation.Runspaces` specifically. 

Runspaces can be called and used directly from powershell, but it stacks cognitive complexity and only starts to feel sane when done from C#.

Hopefully someone finds use out of this additional information outside of the benign definition outline in the official documentation.

