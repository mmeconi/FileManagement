<#
    .SYNOPSIS
        Menuhelper file that calls scripts based on user selection.
    .DESCRIPTION
        This program calls a menu via dot sourcing; then, utilizing a do-until loop, it presents
        the user with a selection of choices. Depending on the users choice, that specific
        program will be called. The menu will re-appear for further input as soon as the task
        has been completed. 
    .NOTES
        AuthorName: Marc Meconi
        DateLastModified: October 29, 2020
 #>

Set-StrictMode -version latest

. "D:\seneca\Semester 2\WIN213\labs\lab 3\mmeconi_menu.ps1"


do{

clear-host
write-host $menu -foregroundcolor cyan -backgroundcolor black

$response = read-host "Please enter a selection [1-4] "

switch ($response)
{
    (1) {& ".\SearchFile.ps1";pause; break}
    (2) {& ".\NewFile.ps1";pause; break}
    (3) {& ".\CopyFiles.ps1";pause;break}
    (4) {exit}
    Default {"Please make a valid choice" ; pause; break}
    }

} until($response -eq 4)

