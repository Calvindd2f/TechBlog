---
title: SonarQube PowerShell Plugin - Creation of Custom Rules
description: Lorem ipsum dolor sit amet
pubDate: Apr 19 2024
heroImage: /blog-sonar-ai.jpg
---
With the completion of the readers,issue structure, sensors, fillers,ast along with the base of the plugin and associated profiles / XML schemas for the issues - the first test did not work. 

After what I can only describe as not fun, I eventually got it to play ball in the way I liked and began the process of incorporating custom rules and allowing for the rule definitions to be easily redefined so users can include their custom rules with minimal hassle.

The redefine powershell script is at the absolute root of the repo and I've defined it as below:

```powershell
$reportFile = Join-path $PSScriptRoot "sonar-powershell-plugin\src\main\resources\powershell-rules.xml"
	$profileFile = Join-path $PSScriptRoot "sonar-powershell-plugin\src\main\resources\powershell-profile.xml"

	$xmlProfileWriter = New-Object System.XMl.XmlTextWriter($profileFile , $Null);
	  # Set The Formatting
    $xmlProfileWriter.Formatting = "Indented"
    $xmlProfileWriter.Indentation = "4"

    # Write the XML Declaration
    $xmlProfileWriter.WriteStartDocument();

    # Start Issues XML Element
    $xmlProfileWriter.WriteStartElement("profile");
	$xmlProfileWriter.WriteElementString("name", "Sonar way");
	$xmlProfileWriter.WriteElementString("language", "ps");
	$xmlProfileWriter.WriteStartElement("rules");

    # Create The Document
    $xmlWriter = New-Object System.XMl.XmlTextWriter($reportFile , $Null);

    # Set The Formatting
    $xmlWriter.Formatting = "Indented"
    $xmlWriter.Indentation = "4"

    # Write the XML Declaration
    $xmlWriter.WriteStartDocument();

    # Start Issues XML Element
    $xmlWriter.WriteStartElement("psrules");

    $powershellRules = Get-ScriptAnalyzerRule;

    foreach ($rule in $powershellRules) 
    { 
	$xmlProfileWriter.WriteStartElement("rule");
	$xmlProfileWriter.WriteElementString("key", $rule.RuleName);
    $xmlProfileWriter.WriteElementString("repositoryKey", "ps-psanalyzer");
	$xmlProfileWriter.WriteEndElement();


     $xmlWriter.WriteStartElement("rule");
            $xmlWriter.WriteElementString("key", $rule.RuleName)
                        $xmlWriter.WriteElementString("internalKey", $rule.RuleName)
        $xmlWriter.WriteElementString("name", $rule.CommonName)
        $xmlWriter.WriteElementString("description", $rule.Description)
        $xmlWriter.WriteElementString("cardinality", "SINGLE")
         $xmlWriter.WriteElementString("remediationFunction", "LINEAR")
		$xmlWriter.WriteElementString("descriptionFormat", "MARKDOWN")

        $xmlWriter.WriteElementString("remediationFunctionBaseEffort", "")
         $remediationDefaultTime = "2min";
         $severity = "INFO";

         if ($rule.Severity -eq "Information") {
         $severity = "INFO";
         $remediationDefaultTime = "2min";
         }
         if ($rule.Severity -eq "Warning") {
         $severity = "MAJOR";
         $remediationDefaultTime = "5min";
         }
         if ($rule.Severity -eq "ERROR") {
         $severity = "BLOCKER";
         $remediationDefaultTime = "15min";
         }
            $xmlWriter.WriteElementString("debtRemediationFunctionCoefficient", $remediationDefaultTime);
            $xmlWriter.WriteElementString("severity", $severity);
          $xmlWriter.WriteEndElement();
    }

    # End Issues XML element
    $xmlWriter.WriteEndElement();

    # End the XML Document
    $xmlWriter.WriteEndDocument();

    # Finish The Document
    $xmlWriter.Finalize
    $xmlWriter.Flush
    $xmlWriter.Close();


	   $xmlProfileWriter.WriteEndDocument();


    # Finish The Document
    $xmlProfileWriter.Finalize
    $xmlProfileWriter.Flush
    $xmlProfileWriter.Close();
```

I defined the custom rules under a module which had a `.psm1` file which checked for the module, installed it if not present then imported the module.

Then it dot sources the custom rules via the respective files.

Here is the module source:

```powershell
# Ensure required modules are loaded
if (-not (Get-Module -ListAvailable -Name PSScriptAnalyzer)) {
    Install-Module -Name PSScriptAnalyzer -Scope CurrentUser
}
Import-Module PSScriptAnalyzer

# Define a helper function to load custom rules
function Import-CustomRule {
    param (
        [string]$Path
    )
    . $Path
}

# Load custom rules
$script:RulePath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$customRules = @(
    "SuppressOutputRule.ps1",
    "ArrayAdditionRule.ps1",
    "StringAdditionRule.ps1",
    "LargeFileProcessingRule.ps1",
    "AvoidWriteHostRule.ps1",
    "AvoidRepeatedFunctionCallsRule.ps1",
    "AvoidCmdletPipelineWrappingRule.ps1",
    "DetectInvokeWebRequestRule.ps1",
    "DetectPotentialParallelProcessingRule.ps1"
)

foreach ($rule in $customRules) {
    $fullPath = Join-Path -Path $script:RulePath -ChildPath "Rules\$rule"
    Import-CustomRule -Path $fullPath
}
```

The custom rules I had created are predominantly usability and performance intended without care about thoughts on my disregard for idiomatic powershell. The custom rules are based on the following concepts:

+ Suppressing output
+ Array addition
+ String addition
+ Processing large files
+ Use Write-Host carefully
+ Avoid repeated calls to a function
+ Avoid wrapping cmdlet pipelines
+ Use OrderedDictionary to dynamically create new objects

PowerShell scripts that leverage .NET directly and avoid the pipeline tend to be faster than idiomatic PowerShell. Idiomatic PowerShell uses cmdlets and PowerShell functions, often leveraging the pipeline, and resorting to .NET only when necessary.

**A Note from Microsoft Learns powershell documentation**

> Many of the techniques described here aren't idiomatic PowerShell and may reduce the readability of a PowerShell script. Script authors are advised to use idiomatic PowerShell unless performance dictates otherwise.



The actual setup of the functions used in the plugin will be in the next post. As this is the most recent push and the rules can be a bitch to setup due to the detection function requiring determining the correct definition in the `ast.findall` from the node.

While I've been considering rewriting the definitions in C# as per the defaults Microsoft have done and imported the rules as a custom module, I decided against this due to it deviating from the intent of the module. That and I'd find myself rendering my work so far redundant and discourage it's use by making my personal rules unusable examples as they would not be easy to follow.

Here are some of the function definitions for custom rules.


**Detect large file processing and advise .NET method (order of magnitude faster)**
```powershell
function Invoke-LargeFileProcessingRule {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Token[]]
        $Tokens,

        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Ast[]]
        $Ast
    )

    $findings = @()
    $cmdletNames = @('Get-Content', 'Set-Content', 'Import-Csv', 'Export-Csv')
    $ast | ForEach-Object {
        if ($_ -is [System.Management.Automation.Language.CommandAst]) {
            $commandName = $_.GetCommandName()
            if ($commandName -and $cmdletNames -contains $commandName) {
                $findings += [PSScriptAnalyzer.RuleRecord]::new(
                    "LargeFileProcessingRule",
                    $_.Extent,
                    "For large files, consider replacing `$commandName` with direct .NET API calls like `[System.IO.File]::ReadAllLines` or `[System.IO.File]::WriteAllLines` for better performance.",
                    "Warning",
                    "PSAvoidSlowCmdletsForLargeFiles"
                )
            }
        }
    }

    return $findings
}

Export-ModuleMember -Function Invoke-LargeFileProcessingRule
```


**Avoid Write-Host**
```powershell
function Invoke-AvoidWriteHostRule {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Token[]]
        $Tokens,

        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Ast[]]
        $Ast
    )

    $findings = @()
    $ast.FindAll({
        param($node)
        $node -is [System.Management.Automation.Language.CommandAst] -and
        $node.GetCommandName() -eq 'Write-Host'
    }, $true) | ForEach-Object {
        $findings += [PSScriptAnalyzer.RuleRecord]::new(
            "AvoidWriteHostRule",
            $_.Extent,
            "Consider replacing `Write-Host` with `[System.Console]::WriteLine()` for better performance and flexibility.",
            "Warning",
            "PSAvoidUsingWriteHost"
        )
    }

    return $findings
}

Export-ModuleMember -Function Invoke-AvoidWriteHostRule
```


**Avoid Repeat Function Calls**
```powershell
function Invoke-AvoidRepeatedFunctionCallsRule {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Token[]]
        $Tokens,

        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Ast[]]
        $Ast
    )

    $findings = @()
    $functionCallNames = @{}

    $ast.FindAll({
        param($node)
        $node -is [System.Management.Automation.Language.CommandAst]
    }, $true) | ForEach-Object {
        $functionName = $_.GetCommandName()
        if (-not $functionCallNames.ContainsKey($functionName)) {
            $functionCallNames[$functionName] = 1
        } else {
            $functionCallNames[$functionName]++
        }
    }

    $functionCallNames.GetEnumerator() | ForEach-Object {
        if ($_.Value -gt 1) {
            $findings += [PSScriptAnalyzer.RuleRecord]::new(
                "AvoidRepeatedFunctionCallsRule",
                $Ast.Extent,
                "Detected repeated calls to function `$_`. Consider optimizing by reusing results or refactoring.",
                "Warning",
                "PSAvoidRepeatedFunctionCalls"
            )
        }
    }

    return $findings
}

Export-ModuleMember -Function Invoke-AvoidRepeatedFunctionCallsRule
```

**String Addition detection**

```powershell
function Invoke-StringAdditionRule {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Token[]]
        $Tokens,

        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Ast[]]
        $Ast
    )

    $findings = @()
    $ast.FindAll({
        param($node)
        $node -is [System.Management.Automation.Language.BinaryExpressionAst] -and
        $node.Operator -eq [System.Management.Automation.Language.TokenKind]::Plus -and
        $node.Left.StaticType -eq [string] -and
        $node.Right.StaticType -eq [string]
    }, $true) | ForEach-Object {
        $findings += [PSScriptAnalyzer.RuleRecord]::new(
            "StringAdditionRule",
            $_.Extent,
            "Consider using the `-join` operator or the `[System.Text.StringBuilder]` class for string concatenation to improve performance.",
            "Warning",
            "PSAvoidUsingStringAddition"
        )
    }

    return $findings
}

Export-ModuleMember -Function Invoke-StringAdditionRule
```


**Detecting Output Suppression (Essentially do anything but `| Out-Null`)**
```powershell
function Invoke-SuppressOutputRule {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Token[]]
        $Tokens,

        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Ast[]]
        $Ast
    )

    $findings = @()
    $Ast.FindAll({
        param($node)
        $node -is [System.Management.Automation.Language.CommandAst] -or
        $node -is [System.Management.Automation.Language.RedirectionAst] -or
        $node -is [System.Management.Automation.Language.CastExpressionAst]
    }, $true) | ForEach-Object {
        $node = $_
        if ($node -is [System.Management.Automation.Language.CommandAst]) {
            $commandName = $node.GetCommandName()
            if ($commandName -eq 'Out-Null') {
                $findings += [PSScriptAnalyzer.RuleRecord]::new(
                    "SuppressOutputRule",
                    $node.Extent,
                    "Consider assigning output to `$null` for better performance instead of piping to Out-Null.",
                    "Warning",
                    "PSAvoidUsingCmdletOutput"
                )
            }
        } elseif ($node -is [System.Management.Automation.Language.RedirectionAst] -and
                $node.Right.Extent.Text -eq '$null') {
            $findings += [PSScriptAnalyzer.RuleRecord]::new(
                "SuppressOutputRule",
                $node.Extent,
                "Consider assigning output to `$null` for better performance instead of redirecting to `$null`.",
                "Warning",
                "PSAvoidUsingCmdletOutput"
            )
        } elseif ($node -is [System.Management.Automation.Language.CastExpressionAst] -and
                $node.StaticType -eq [void]) {
            $findings += [PSScriptAnalyzer.RuleRecord]::new(
                "SuppressOutputRule",
                $node.Extent,
                "Consider assigning output to `$null` for better performance instead of casting to [void].",
                "Warning",
                "PSAvoidUsingCmdletOutput"
            )
        }
    }

    return $findings
}

Export-ModuleMember -Function Invoke-SuppressOutputRule
```

**Detect Array Addition (Essentially, detect `+=` and use anything else)**

```powershell
function Invoke-ArrayAdditionRule {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Token[]]
        $Tokens,

        [Parameter(Mandatory)]
        [System.Management.Automation.Language.Ast[]]
        $Ast
    )

    $findings = @()
    # Use FindAll to search for all instances of AssignmentStatementAst with a PlusEquals operator.
    $Ast.FindAll({
        param($node)
        $node -is [System.Management.Automation.Language.AssignmentStatementAst] -and
        $node.Operator -eq [System.Management.Automation.Language.TokenKind]::PlusEquals
    }, $true) | ForEach-Object {
        $variableName = $_.Left.VariablePath.UserPath
        # Ensure we're dealing with a variable and it's not $null (though checking against $null might not be strictly necessary in this context)
        if ($variableName -and $variableName -ne '$null') {
            $findings += [PSScriptAnalyzer.RuleRecord]::new(
                "ArrayAdditionRule",
                $_.Extent,
                "Consider using a List[T] and .Add(..) method instead of `+=` for better performance.",
                "Warning",
                "PSUseListAddInsteadOfArrayPlusEquals"
            )
        }
    }

    return $findings
}

Export-ModuleMember -Function 'Invoke-ArrayAdditionRule'
```


That is about the brunt of the custom rules and it has served me greatly. I've made minor tweaks to the custom rule definitions since release and also added more rules + better documentation / description for the rule in the first place. 

The plugin has also been tested against the PSScriptAnalyzers community rules powershell script, from the official repo. While these rules are not my personal preference it was more about portability. 

I will finalize the blog entry with the `README.md` for usage of the plugin with custom rules:

---------------------
### PSScriptAnalyzer Dependency

This section is detailing creating custom rules and them testing them from a terminal .

**For the avoidance of doubt, this is not the instructions for the plugin for SonarQube.**

**The instructions for that require only placing the custom rule functions (.ps1/.psm1) in the plugin folder and running the script that rewrites the rule definitions to include the custom rules.**
**Everything else is handled by the sensors/scanners in java which does any of these for you.**

1. Basics of PSScriptAnalyzer Rules  
PSScriptAnalyzer rules are essentially PowerShell functions that follow specific naming and structural conventions. Each rule function must output objects of type DiagnosticRecord when it finds a violation in the analyzed scripts.

2. Create a Custom Rule  
A simple example of a custom rule that checks for the use of Write-Host (as using Write-Host is often considered a bad practice in functions or scripts that might be used in automation):

```powershell
function AvoidWriteHost {
	[CmdletBinding()]
	param(
	    [Parameter(Mandatory=$true)]
        [System.Management.Automation.Language.ScriptBlockAst]$Ast
    )
    
    $findings = $Ast.FindAll({$args[0] -is [System.Management.Automation.Language.CommandAst] -and $args[0].GetCommandName() -eq 'Write-Host'}, $true)
    
    foreach ($finding in $findings) {
	    $violation = [Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.DiagnosticRecord]::new(
	    "Use of Write-Host is discouraged in scripts and functions.",
        $finding.Extent,
        "AvoidWriteHost",
        "Information",
        $Ast.Extent.File
        )
		
		$violation | Select-Object -Property RuleName, Message, Extent
	}
}
```

3. Save Your Custom Rule to a Module  
For PSScriptAnalyzer to recognize and use your custom rule, it needs to be part of a PowerShell module. Create a new PowerShell module or use an existing one, and save the rule function to a .psm1 file within that module. Don't forget to export the function using `Export-ModuleMember -Function 'AvoidWriteHost'` in the module file.

4. Load Your Custom Module  
Before running the analysis, load your custom module using Import-Module. Ensure that the module path is included in `$env:PSModulePath` or specify the full path when importing. 

5. Run PSScriptAnalyzer with Your Custom Rule  
Use Invoke-ScriptAnalyzer to run the analysis, including your custom rule(s). You can specify the path to the script or module you want to analyze:

```powershell
Invoke-ScriptAnalyzer -Path "Path\To\YourScript.ps1" -IncludeRule 'AvoidWriteHost'
```

Or, if you want to run all available rules including your custom ones:

```powershell
Invoke-ScriptAnalyzer -Path "Path\To\YourScript.ps1"
```

After adding your custom rule to a module and running the analyzer as shown, PSScriptAnalyzer will include your custom rule in its analysis, allowing you to enforce additional practices and standards beyond the default rule set.