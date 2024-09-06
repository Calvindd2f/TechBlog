---
title: LetsEncrypt Automation in linux + powershell( windows)
description: httpsc2doneright
pubDate: Dec 20 2021
heroImage: /blog-placeholder-1.jpg
---

Requires the **domain name required for the certificate** along with the **WAN IP from the server** or VPS or workstation hosting the site.

For context I will be using: `app-support.com`

Resolve the WAN IP from the current host by either:

**powershell:** `$wanIP=(IRM ipinfo.io/ip)`
**unix:** `wan='curl ipinfo.io/ip'`

**httpsc2doneright.sh**
```sh
#!/bin/bash

# Global Variables
runuser=$(whoami)
tempdir=$(pwd)
# Make sure this is being ran on the VPS/Server the site is being hosted on. 

# Echo Title
clear
echo '=========================================================================='
echo ' HTTPS C2 Done Right Setup Script | [Updated]: 2024'
echo '=========================================================================='
echo '                      | [Github]: @Calvindd2f                             '
echo '=========================================================================='
echo 'Will Eventually remove keystore and profile features'
echo '=========================================================================='


echo -n "Enter your DNS (A) record for domain [ENTER]: "
read domain
echo

echo -n "Enter your common password to be used [ENTER]: "
read password
echo

echo -n "Enter your server IP address [ENTER]: "
read cobaltStrike
echo

domainPkcs="$domain.p12"
domainStore="$domain.store"
cobaltStrikeProfilePath="$cobaltStrike/httpsProfile"


# Environment Checks
func_check_env(){
  # Check Sudo Dependency going to need that!
  if [ $(id -u) -ne '0' ]; then
    echo
    echo ' [ERROR]: This Setup Script Requires root privileges!'
    echo '          Please run this setup script again with sudo or run as login as root.'
    echo
    exit 1
  fi
}

func_check_tools(){
  # Check Sudo Dependency going to need that!
  if [ $(which keytool) ]; then
    echo '[Sweet] java keytool is installed'
  else 
    echo
    echo ' [ERROR]: keytool does not seem to be installed, installing now...'
    sudo apt-get install -y default-jre
    echo ' Java (and keytool) is now installed'
    echo
  fi
  if [ $(which openssl) ]; then
    echo '[Sweet] openssl keytool is installed'
  else 
    echo
    echo ' [ERROR]: openssl does not seem to be installed'
    echo
    exit 1
  fi
  if [ $(which git) ]; then
    echo '[Sweet] git keytool is installed'
  else 
    echo
    echo ' [ERROR]: git does not seem to be installed'
    sudo apt-get -y install git
    echo 'Git is now installed'
   fi
}

func_apache_check(){
  # Check Sudo Dependency going to need that!

  # if [ sudo lsof -nPi | grep ":80 (LISTEN)" ]; then
  #   echo
  #   echo ' [ERROR]: This Setup Script Requires that port!'
  #   echo '          80 not be in use.'
  #   echo
  #   exit 1
  if [ $(which java) ]; then
    echo '[Sweet] java is already installed'
    echo
  else
    apt-get update
    apt-get install default-jre -y 
    echo '[Success] java is now installed'
    echo
  fi
  if [ $(which lsof) ]; then
    echo '[Sweet] lsof is already installed'
    echo
  else
    apt-get update
    apt-get install lsof
    echo '[Success] lsof is now installed'
    echo
  fi
  if [ $(which apache2) ]; then
    echo '[Sweet] Apache2 is already installed'
    service apache2 start
    echo
  else
    apt-get update
    apt-get install apache2 -y 
    echo '[Success] Apache2 is now installed'
    echo
    service apache2 restart
    service apache2 start
  fi
  if [ $(lsof -nPi | grep -i apache | grep -c ":80 (LISTEN)") -ge 1 ]; then
    echo '[Success] Apache2 is up and running!'
  else 
    echo
    echo ' [ERROR]: Apache2 does not seem to be running on'
    echo '          port 80? Try manual start?'
    echo
    exit 1
  fi
  if [ $(which ufw) ]; then
    echo 'Looks like UFW is installed, opening ports 80 and 443'
    ufw allow 80/tcp
    ufw allow 443/tcp
    echo
  fi
}

func_install_letsencrypt(){
  sudo apt-get install -y certbot python3-certbot-apache
  sudo certbot --authenticator standalone --installer apache -d $domain --pre-hook "service apache2 stop" --post-hook "service apache2 start" --non-interactive --agree-tos -m admin@$domain
  if [ -e /etc/letsencrypt/live/$domain/fullchain.pem ]; then
    echo '[Success] letsencrypt certs are built!'
  else
    echo "[ERROR] letsencrypt certs failed to build.  Check that DNS A record is properly configured for this domain"
    exit 1
  fi
}

func_build_pkcs(){
  cd /etc/letsencrypt/live/$domain
  echo '[Starting] Building PKCS12 .p12 cert.'
  openssl pkcs12 -export -in fullchain.pem -inkey privkey.pem -out $domainPkcs -name $domain -passout pass:$password
  echo '[Success] Built $domainPkcs PKCS12 cert.'
  echo '[Starting] Building Java keystore via keytool.'
  keytool -importkeystore -deststorepass $password -destkeypass $password -destkeystore $domainStore -srckeystore $domainPkcs -srcstoretype PKCS12 -srcstorepass $password -alias $domain
  echo '[Success] Java keystore $domainStore built.'
  mkdir $cobaltStrikeProfilePath
  cp $domainStore $cobaltStrikeProfilePath
  echo '[Success] Moved Java keystore to CS profile Folder.'
}

func_build_c2(){
  cd $cobaltStrikeProfilePath
  echo '[Starting] Cloning into MgGraph.profile for testing.'
  wget https://raw.githubusercontent.com/Calvindd2f/Security-Stuff/main/cs_playbooks/profiles/Microsoft_GraphCLI.profile --no-check-certificate -O amazon.profile
  echo '[Success] MgGraph.profile clonned.'
  echo '[Starting] Adding java keystore / password to MgGraph.profile.'
  echo " " >> MgGraph.profile
  echo 'https-certificate {' >> MgGraph.profile
  echo   set keystore \"$domainStore\"\; >> MgGraph.profile
  echo   set password \"$password\"\; >> MgGraph.profile
  echo '}' >> MgGraph.profile
  echo '[Success] MgGraph.profile updated with HTTPs settings.'
}
# Menu Case Statement
case $1 in
  *)
  func_check_env
  func_check_tools
  func_apache_check
  func_install_letsencrypt
  func_build_pkcs
  func_build_c2
  ;;
esac
```


#### PowerShell, smooth-brained version

```powershell
# Requirements
Write-Verbose -Message @'
Windows PowerShell 5.1 
.NET Framework 4.7.2 (link to check) 
Possibility to add CNAME in DNS
'@

# Check for Admin
function CheckCisPriv
{
  <#
      .SYNOPSIS
      .EXAMPLE
      Is Administrator check
      .EXAMPLE
      CheckYourPrivilageCisScum
  #>

  [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
  [CmdletBinding(SupportsShouldProcess = $True, ConfirmImpact = 'High')]
  Param (
    [Switch]
    $Force,

    [Switch]
    $ExitImmediately
  )

  if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
  {
    throw 'Requires elevated PowerShell prompt.'
  }

  $Response = $True

  if (!$Force)
  {
    $Response = $psCmdlet.ShouldContinue('xyz')
  }

  if (!$Response)
  {
    return
  }
}

# Priv check ; ExecPolicy & Install+Import module
CheckCisPriv
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
Install-Module -Name 'Posh-ACME'
Import-Module -Name Posh-ACME

# Verbose info for installed module
Write-Verbose -Message @"
Displaying Sample:
New-PACertificate $env:Wildcard-or-Domain -AcceptTOS -Contact $env:ContactEmail -DnsPlugin AcmeDns -PluginArgs $env:PluginArgs -Install
"@

# Variables: Can be used with DRMM
$env:WildcardorDomain = *.dread.ie
$env:ContactEmail = calvindd2f@git.hub
$env:PluginArgs = @{
  ACMEServer = 'auth.acme-dns.io'
}

# New Certificate
New-PACertificate $env:WildcardorDomain -AcceptTOS -Contact $env:ContactEmail -DnsPlugin AcmeDns -PluginArgs $env:PluginArgs  -Install


# Autorenewal Automation
$Trigger = New-ScheduledTaskTrigger -At 10:00am -Daily
$Action = New-ScheduledTaskAction -Execute 'PowerShell.exe' -Argument "$env:HOMEDRIVE\Cert\AutoRenewal.ps1"
Register-ScheduledTask -TaskName 'Certificate AutoRenewal' -Trigger $Trigger -User "$env:USERDOMAIN\$env:USERNAME" -Password '<password>' -Action $Action -RunLevel Highest -Force
```

For `PowerShell` what I did was:

```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process; Install-Module -Name 'Posh-ACME' -Scope CurrentUser;Import-Module -Name Posh-ACME;$env:WildcardDomain ='app-support.com';$env:ContactEmail = 'C@lvin.ie';$env:PluginArgs = @{ACMEServer = 'auth.acme-dns.io'}

# Crate request
New-PACertificate $env:WildcardDomain -AcceptTOS -Contact $env:ContactEmail -PluginArgs @{'ACMEServer'='auth.acme-dns.io'}

[console]::writeline('THIS IS FILLER, I CHANGED THE DNS RECORDS MANUALLY.')

Get-PACertificate|fl
```
```
Subject       : CN=app-support.com
NotBefore     : 06/09/2024 03:26:02
NotAfter      : 05/12/2024 02:26:01
KeyLength     : 2048
Thumbprint    : 31C4E1F8BAA0736E284BCD4FA91803457509308E
ARIId         : u7zDR6XkvKnGw6RyDBCNojXhyOg.BAgUoqhClNI_bsGZ05x8WuwY
Serial        : 351198831787135205348586429280691318090776
AllSANs       : {app-support.com}
CertFile      : C:\Users\c\AppData\Local\Posh-ACME\LE_PROD\1928734016\app-support.com\cert.cer
KeyFile       : C:\Users\c\AppData\Local\Posh-ACME\LE_PROD\1928734016\app-support.com\cert.key
ChainFile     : C:\Users\c\AppData\Local\Posh-ACME\LE_PROD\1928734016\app-support.com\chain.cer
FullChainFile : C:\Users\c\AppData\Local\Posh-ACME\LE_PROD\1928734016\app-support.com\fullchain.cer
PfxFile       : C:\Users\c\AppData\Local\Posh-ACME\LE_PROD\1928734016\app-support.com\cert.pfx
PfxFullChain  : C:\Users\c\AppData\Local\Posh-ACME\LE_PROD\1928734016\app-support.com\fullchain.pfx
PfxPass       : System.Security.SecureString
```

I completely forgot the Pfx pass... or if I was even asked - after the certificate was created.

I am going to shill my newer blog post - `C# custom PSScriptAnalyzerRules` to showcase how to display the credential even though it is a `System.Security.SecureString` type.

```powershell
$pass=(Get-PACertificate).PfxPass
$heroin=[Runtime.InteropServices.Marshal]::SecureStringToBSTR($pass)
[Runtime.InteropServices.Marshal]::PtrToStringBSTR($heroin)
#NSFW OUTPUT
```

After seeing the password generated *(There is no prompt for you to define it)* and how there wasn't even a half assed attempt at using at bare minimum `Get-Random` , I configured wsl under `.wslconfig` to take the IP address of my host machine and did the unix version at the top.

I am not even going to humor the task manager automation because I do not recommend creating a certificate with a shit password like this.

------------------

#### How I added this to my Astro Website

Astro uses the Vite engine, the application of SSL cert is easy. Very easy.

Install the plugin:

`npm install --save @vitejs/plugin-basic-ssl`

Add the plugin via pass-thru in Astro config:

```astro
import basicSsl from '@vitejs/plugin-basic-ssl'

export default defineConfig({
  vite: {
    plugins: [ basicSsl() ]
  }
})
```

I’ve also added an additional host tag in my dev startup

```json
"scripts":{
	"dev": "astro dev --host"
}
```