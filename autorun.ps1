# Run on Windows
pwsh.exe -noprofile -noexit -command '& (npm run dev -- --host 192.168.1.1)'

# Run depcheck and export results to custom object
$dep = [PSCustomObject]@{
    dependencies = ((npx depcheck --json)|ConvertFrom-Json).dependencies
    devDependencies = ((npx depcheck --json)|ConvertFrom-Json).devDependencies
    missing = ((npx depcheck --json)|ConvertFrom-Json).missing
}|ConvertTo-Json;$Status = [console]::writeline("| Listing unused dev/dependencies and missing dependencies |");[console]::writeline("------------------------------");$dep


#Interactive prompt to remove
$x=Read-Host 'Remove unused (dev)dependencies?'
$y=Read-Host 'Attempt to fix the missing (dev)dependencies?'

if([string]::isnullorwhitespace($x))
{
    [console]::writeline('Request to remove unused declined.')
}
elseif ([string]::isnullorwhitespace($y))
{
    [console]::writeline('Request to remedy missing packages declined.')
}
elseif ([string]::isnullorwhitespace($x) -and [string]::isnullorwhitespace($y))
{
    [console]::writeline('Both questions declined or null. Exiting')
    break
}
else
{
    if(![string]::isnullorwhitespace($x))
    {
        foreach ($package in ((npx depcheck --json) | ConvertFrom-Json).dependencies)
        {
            if (![string]::IsNullOrWhiteSpace($package))
            {
                [console]::writeline("Removing package: $package from dependencies")
                    try
                    {
                        [void] (npm uninstall $package)
                    }
                    catch [exception]
                    {
                        throw [exception]::new('fuck')
                        [void] (sleep 3)
                        (Get-Error)
                        [enviornment]::newline
                        [console]::writeline("Exiting")
                        [void] (sleep 7)
                        exit[5]
                    }
            }
        }

        foreach ($package in ((npx depcheck --json) | ConvertFrom-Json).devdependencies)
        {
            if (![string]::IsNullOrWhiteSpace($package))
            {
                [console]::writeline("Removing package: $package from (dev)dependencies")
                    try
                    {
                        [void] (npm uninstall $package)
                    }
                    catch [exception]
                    {
                        throw [exception]::new('fuck')
                        [void] (sleep 3)
                        (Get-Error)
                        [enviornment]::newline
                        [console]::writeline("Exiting")
                        [void] (sleep 7)
                        exit[5]
                    }
            }
        }

        [console]::writeline("Unused packages removed!")
        if([string]::isnullorwhitespace($y))
        {
            [console]::writeline("Installing / remediating missing packages...")
            foreach ($package in ((npx depcheck --json) | ConvertFrom-Json).missing) {
            {
                if (![string]::IsNullOrWhiteSpace($package))
                {
                    [console]::writeline("Installing package: $package to (dev)dependencies")
                    try
                    {
                        [void] (npm i --save-dev $package)
                        [console]::writeline("$package fixxed successfully")
                    }
                    catch
                    {
                        try
                        {
                            [void] (npm i --save $package)
                            [console]::writeline("$package fixed successfully -error handled so it is saved to dependencies instead of devdeps.")
                        }
                        catch
                        {
                            Get-Error
                            [enviornment]::newline
                            [console]::writeline("Failed to rememdy - continuing on with the next.")
                            [void] (Sleep 3)
                            continue
                        }
                    }
                }

            }
        }
    }
}
}