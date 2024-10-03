
funciton moveinlinedimages
{
    $files = Get-ChildItem -r -File -Filter '*.PNG';
    if (!([string]::IsNullOrWhiteSpace($files)))
    {
        foreach ($f in $files) { Move-Item $f C:\users\c\TechBlog\public\img\ };
    }
    $files = Get-ChildItem -r -File -Filter '*.JPG';
    if (!([string]::IsNullOrWhiteSpace($files)))
    {
        foreach ($f in $files) { Move-Item $f C:\users\c\TechBlog\public\img\ };
    }
    $files = Get-ChildItem -r -File -Filter '*.WEBM';
    if (!([string]::IsNullOrWhiteSpace($files)))
    {
        foreach ($f in $files) { Move-Item $f C:\users\c\TechBlog\public\img\ };
    }
    $files = Get-ChildItem -r -File -Filter '*.WEBP';
    if (!([string]::IsNullOrWhiteSpace($files)))
    {
        foreach ($f in $files) { Move-Item $f C:\users\c\TechBlog\public\img\ };
    }
    [void](Remove-Variable $files)
}