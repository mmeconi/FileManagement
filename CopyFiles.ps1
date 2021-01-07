<#
    .SYNOPSIS
        Copies files.
    .DESCRIPTION
        Using 2 Do While loops, this program requires input from the user for a source directory,
        then the same for a destination directory. It then uses the Copy-Item cmdlet to perform the copy. 
    .NOTES
        AuthorName: Marc Meconi
        DateLastModified: October 29, 2020
 #>

set-strictmode -version latest



do{
[string]$SourceDir = read-host "Enter the source directory to copy: "
} while ($SourceDir -eq "")

do{
[string]$DestDir = read-host "Enter the destination directory to copy to: "
} while ($DestDir -eq "")

Write-Host "~~~~~~~~~~~~~~~~~~~~ Copying Directory ~~~~~~~~~~~~~~~~~~~" -foregroundcolor cyan -backgroundcolor black

Copy-Item -path $SourceDir -Destination $DestDir