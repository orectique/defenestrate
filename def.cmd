:: Install apps

winget install Google.Chrome
winget install Microsoft.VisualStudioCode
winget install Brave.Brave
winget install Microsoft.PowerToys
winget install Julialang.Julia
:: winget install WhatsApp.WhatsApp
winget install Microsoft.VCRedist.2022.arm64
winget install CondaForge.Mambaforge
winget install Posit.RStudio

:: Fuck OneDrive, all my homies use a spare SSD

winget uninstall Microsoft.OneDrive

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Personal /t REG_EXPAND_SZ /d "%USERPROFILE%\Documents" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "My Pictures" /t REG_EXPAND_SZ /d "%USERPROFILE%\Pictures" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "My Videos" /t REG_EXPAND_SZ /d "%USERPROFILE%\Videos" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop /t REG_EXPAND_SZ /d "%USERPROFILE%\Desktop" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "My Music" /t REG_EXPAND_SZ /d "%USERPROFILE%\Music" /f

rmdir "%USERPROFILE%\OneDrive"

:: Personalize 