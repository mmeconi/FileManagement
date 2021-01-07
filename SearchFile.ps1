<#
    .SYNOPSIS
        Searches for files.
    .DESCRIPTION
        User is prompted to enter required information to search for files of a particular file extension.
        Uses the Get-ChildItem cmdlet to search for matching files. 
    .NOTES
        AuthorName: Marc Meconi
        DateLastModified: October 29, 2020
 #>

param (
    [parameter(Mandatory=$true)][string] $FileDirectory="",
    [parameter(Mandatory=$true)][string] $FileExtension=""
    )

Set-StrictMode -version latest

Write-Host "~~~~~~~~~~~~~~~~~~~~ Searching For Files ~~~~~~~~~~~~~~~~~~~" -foregroundcolor cyan -backgroundcolor black

$search = get-childitem -path $FileDirectory -filter *.$FileExtension
Write-Output $search
