---
title: Extracting - Importing Intune Configuration Across Multiple Tenants
description: Exporting Intune Configuration from a dev tenant and deploying agreed upon standards in the client tenant. Also allows a manual backup of Intune env.
pubDate: Feb 08 2024
heroImage: /blog-placeholder-3.jpg
tags: ['Intune','Tenant','Administration','ZTE']
categories: ['Automation']
---
This post goes over Intune baselines, backup of an intune configuration, creation of baselines within a Microsoft Developer Tenant and exporting that configuration from the dev tenant to import onto a client tenant after discussion. 

This wouldn't be possible without the GUI tool created by Micke-K named IntuneManagement. 

Here is the GUI he created for the program using WPF and powershell.

![[Pasted image 20240830143203.png]]


Let's quickly go over the setup.

```powershell
mkdir /intune
cd /intune
git clone https://github.com/Micke-K/IntuneManagement.git
cd IntuneManagement
Unblock-File "*.cmd" ; Unblock-File "*.ps1" # not necessary but will do security warning if not performed. (unsigned)
& .\Start-IntuneManagement.ps1

```

Now let's do a delegated sign in to my tenant

![[Pasted image 20240830144016.png]]

If the `README.md` I ignored was actually read, you may encounter an issue when trying to authenticate, install the MSAL.PS module to alleviate this

```powershell
Install-Module -Name MSAL.PS -Scope CurrentUser;
Import-Module -Name MSAL.PS;
```

If you still have issues afterwards make sure that you are using powershell 5.1 as the cmdlets call powershell.exe from cmd and not pwsh.exe

Worst case scenario just do the boilerplate to install all the microsoft provided powershell modules

```powershell
Install-Module -Name Microsoft365DSC;
Import-Module -Name Microsoft365DSC;
Update-M365DSCDependencies -Scope CurrentUser;
```