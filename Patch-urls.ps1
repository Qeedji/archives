<#
.SYNOPSIS
This script permits to patch urls into md files
.DESCRIPTION
This script permits to patch urls into md files
.PARAMETER source_base_path
Gives the path where we can find the source directories
.PARAMETER dest_base_path
Gives the path where we will put the destination directories
.NOTES
VERSION:1.10.10
#>

[CmdletBinding()]

Param
(
	[Parameter(Mandatory=$true, HelpMessage = 'Gives the path where we can find the source directories')]
    [ValidateNotNullOrEmpty()]
    [string]$source_base_path = ".\source\",
	[Parameter(Mandatory=$true, HelpMessage = 'Gives the path where we can find the destination directories')]
    [ValidateNotNullOrEmpty()]
    [string]$dest_base_path = ".\dest\"
)

Begin
{
	$version = "1.10.10"

	Write-Host "==================================================================="
	Write-Host "Patch-urls, V" $version
	Write-Host "==================================================================="
	Write-Host ""

    Write-host "Resync destination directory..."

    if (Test-Path -Path $dest_base_path)
    {
        try {
            Remove-Item $dest_base_path -Recurse -Force -ErrorAction Stop
        }
        catch{
            Write-host "Problem when deleting the directory" $dest_base_path ". Please correct the problem. Error message:" -Foreground "red"
            Write-host $_.Exception.Message -Foreground "red"
            Exit 1
        }
    }

    try {
        Copy-Item -Path $source_base_path -Destination $dest_base_path -Force -Recurse -ErrorAction Stop -Exclude "*.md"
    }
    catch{
        Write-host "Problem when copying the directory" $source_base_path ". Please correct the problem. Error message:" -Foreground "red"
        Write-host $_.Exception.Message -Foreground "red"
        Exit 1
    }

    Write-host "Patch files..."
    $files = Get-ChildItem -path $source_base_path -File -Recurse -Name -Filter "*.md"

    foreach ($f in $files)
    {
        $tmp = -join($source_base_path, "\", $f)
        $in_datas = get-content -Path $tmp

        $out_datas = @()
        $nb = 0
        foreach ($line in $in_datas)
        {
            $line = $line.TrimEnd()
            #test each line
            if ( $line -like "*{.auth-downloads}*" -or $line -like "*{.free-downloads}*" )
            {
                if ($line -like "*{.auth-downloads}*")
                {
                    $to_suppress = "{.auth-downloads}"
                    $to_insert = "https://github.com/innes-labs/archives/blob/main/downloads/"
                }
                else
                {
                    $to_suppress = "{.free-downloads}"
                    $to_insert = "https://github.com/innes-labs/archives/blob/main/downloads/"
                }
                #The string to suppress is always at the end
                $line = $line.Replace($to_suppress,"")
                $tmp = $line.IndexOf("](")
                $line = -join($line.Substring(0, $tmp+2), $to_insert, $line.Substring($tmp+2))
                $nb = $nb + 1
            }
            $out_datas += $line
        }
        $tmp = -join($dest_base_path, "\", $f)
        set-content -Path $tmp -Value $out_datas
        $tmp= -join("File: '", $tmp, "', ", $nb, " lines corrected.")
        Write-host $tmp
    }

	Write-Host "Patch ended."
}	#End of Begin

Process
{
} #End of Process
End
{
}