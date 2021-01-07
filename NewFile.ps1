<#
    .SYNOPSIS
        Creates new files.
    .DESCRIPTION
        User is prompted to enter required information to create a new file. Then, depending on the number
        of files to be created, different results occur. If the user requests multiple files be made,
        a for loop ensures that the files are created with a different number in the name.
    .NOTES
        AuthorName: Marc Meconi
        DateLastModified: October 29, 2020
 #>

param (
    [parameter(Mandatory=$true)][string] $FileName="",
    [parameter(Mandatory=$true)][string] $FilePath="",
    [parameter(Mandatory=$true)][int] $NumberFiles=""
    )

Set-StrictMode -version latest

Write-Host "~~~~~~~~~~~~~~~~~~~~ Creating Files ~~~~~~~~~~~~~~~~~~~" -foregroundcolor cyan -backgroundcolor black

if ($NumberFiles -eq 1){
    New-Item -path $FilePath -name $FileName -ItemType file
}elseif($NumberFiles -gt 1){
    for($i=1; $i -le $NumberFiles; $i++){
        New-Item -path $FilePath -name "$($FileName)$($i)" -itemtype file
        }
}else{
    write-output "You must select at least one file to be created"
    pause
    exit
    }





    
