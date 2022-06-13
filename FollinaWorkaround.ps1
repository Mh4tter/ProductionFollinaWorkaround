$ENV:ActivateWorkaround = "Yes"
if($ENV:ActivateWorkaround -eq "Yes") {
    New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR
    Set-Item -Path "HKCR:\ms-msdt" -Value "URL:ms-msdt_bak"
    Rename-Item -Path "HKCR:\ms-msdt" -newName "ms-msdt_bak"
} else {
    New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR
    Rename-Item -Path "HKCR:\ms-msdt_bak" -newName "ms-msdt"

    Set-Item -Path "HKCR:\ms-msdt" -Value "URL:ms-msdt"
}
