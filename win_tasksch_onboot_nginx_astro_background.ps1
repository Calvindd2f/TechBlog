Function Add-Path([string]$inputObjectPath)
{
    if ($inputObjectPath -notlike [IO.Path]::GetFullPath)
    {
        $inputObjectPath = [IO.Path]::GetFullPath;
    }

    if ($env:Path -notcontains $inputObjectPath)
    {
        if($inputObjectPath -notcontains ';')
        {
            $inputObjectPath=Join-String -OutputPrefix ';' -OutputSuffix $inputObjectPath
        }
        if (-not [System.Environment]::IsPrivilegedProcess)
        {
            [System.Environment]::SetEnvironmentVariable([string]$inputObjectPath,$env:Path,[System.EnvironmentVariableTarget]::User);
        }
        else
        {
            [System.Environment]::SetEnvironmentVariable([string]$inputObjectPath,$env:Path,[System.EnvironmentVariableTarget]::User);
            [System.Environment]::SetEnvironmentVariable([string]$inputObjectPath,$env:Path,[System.EnvironmentVariableTarget]::Machine);
        }
    }
    if ([regex]::Match($env:PATH, ';;'))
    {
        [regex]::Replace($env:PATH, ';;', ';')
        [console]::writeline("Fucked up `$env:Path detected and corrected.")
            try
            {
                $env:path += ";C:\Users\c\Desktop\nginx-1.27.1\nginx-1.27.1"
            }
            catch {
                throw $_
            }
    }
};
$repo=[PSCustomObject]@{
    Portal = 'C:\Users\c\Portal\Portal'
    TechBlog = 'C:\Users\c\calvin\__move-pending_Coding-Tech-Blog\boilerplate_tempaltes\Astro-Tech-Blog-Boilerplate-main\tech_blog\TechBlog'
    Functions ='C:\Users\c\Desktop\Functions'
}
$bin = [PSCustomObject]@{
    nginx = 'C:\Users\c\Desktop\nginx-1.27.1\nginx-1.27.1'
    site = "[void](cd $repo.TechBlog);[void](npx astro dev --host)"
}
$cert = [PSCustomObject]@{
    Details = (get-pAOrder)
}

# Registered Task for start on boot astro website
# Registered Task for start on nginx reverse proxy
if($env:PATH -notcontains $bins.nginx)
{$env:path += ";$bins.nginx"};
cd $repo.TechBlog;
$pwd=(pwd).path;
cd $bin.nginx;
nginx -T
nginx -s reload
cd $pwd
# Registered Task for check SSL certificate expiry is in -lt 1 week or past due

nginx &
npx astro dev --host &