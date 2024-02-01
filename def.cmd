:: Fuck OneDrive, all my homies use a spare SSD for backup

winget uninstall Microsoft.OneDrive

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Personal /t REG_EXPAND_SZ /d "%USERPROFILE%\Documents" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "My Pictures" /t REG_EXPAND_SZ /d "%USERPROFILE%\Pictures" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "My Videos" /t REG_EXPAND_SZ /d "%USERPROFILE%\Videos" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop /t REG_EXPAND_SZ /d "%USERPROFILE%\Desktop" /f

reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "My Music" /t REG_EXPAND_SZ /d "%USERPROFILE%\Music" /f

rmdir /s /q "%USERPROFILE%\OneDrive"

:: Personalize 

%cd%\classic.deskthemepack

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

:: Install R - TODO: update links to use stable links for latest release
curl.exe --output "%USERPROFILE%\Downloads\rbase.exe" --url https://cran.r-project.org/bin/windows/base/R-4.3.1-win.exe
curl.exe --output "%USERPROFILE%\Downloads\rtools.exe" --url https://cran.r-project.org/bin/windows/Rtools/rtools43/files/rtools43-5863-5818.exe

%USERPROFILE%\Downloads\rbase.exe /SILENT /DIR="C:\Program Files\R\R-4.3.1"
%USERPROFILE%\Downloads\rtools.exe /SILENT /DIR="C:\Rtools43"

:: Setup WSL
wsl --install