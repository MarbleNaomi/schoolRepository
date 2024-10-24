#!/usr/bin/pwsh

$dir = Read-Host "Enter a directory "
$type = Read-Host "Enter a filetype "
Get-ChildItem -Path $dir* -Filter *$type | Select-Object Name,Directory | Format-Table -AutoSize *