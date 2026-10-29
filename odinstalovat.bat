@echo off
setlocal
set "PKG=com.VertigoGames.The7thGuestVR"
set "ADB=adb"
where adb >nul 2>nul || set "ADB=%~dp0adb.exe"
if not exist "%ADB%" if exist "C:\Program Files (x86)\MiPhoneAssistant\adb.exe" set "ADB=C:\Program Files (x86)\MiPhoneAssistant\adb.exe"
"%ADB%" shell am force-stop %PKG%
"%ADB%" shell rm -f "/sdcard/Android/obb/%PKG%/overflow2.66.%PKG%.obb"
echo Cestina odstranena, hra je zpet v puvodnim stavu.
pause
