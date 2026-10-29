@echo off
setlocal
rem Instalace cestiny The 7th Guest VR (Quest 3, verze hry 1.1.3 / versionCode 66)

set "PKG=com.VertigoGames.The7thGuestVR"
set "OBB=overflow2.66.%PKG%.obb"
set "ADB="

where adb >nul 2>nul && set "ADB=adb"
if not defined ADB if exist "%~dp0adb.exe" set "ADB=%~dp0adb.exe"
if not defined ADB if exist "C:\Program Files (x86)\MiPhoneAssistant\adb.exe" set "ADB=C:\Program Files (x86)\MiPhoneAssistant\adb.exe"
if not defined ADB (
  echo Nenasel jsem adb.exe. Stahni Android platform-tools a dej adb.exe vedle tohoto souboru.
  goto :end
)

echo Hledam Quest...
"%ADB%" wait-for-device
"%ADB%" shell pm list packages %PKG% | findstr /c:"%PKG%" >nul || (
  echo Hra The 7th Guest VR neni na headsetu nainstalovana.
  goto :end
)
for /f "tokens=2 delims==" %%v in ('call "%ADB%" shell dumpsys package %PKG% ^| findstr /c:"versionCode="') do set "VER=%%v" & goto :gotver
:gotver
echo Verze hry: %VER%
echo %VER% | findstr /b /c:"66 " >nul || echo POZOR: cestina je delana pro versionCode 66, po aktualizaci hry nemusi fungovat.

"%ADB%" shell am force-stop %PKG%
"%ADB%" push "%~dp0%OBB%" "/sdcard/Android/obb/%PKG%/%OBB%" || goto :end
echo.
echo Hotovo. Ve hre nastav jazyk "Cestina" (puvodne English).
:end
pause
