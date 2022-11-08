@ECHO OFF
color a
cls
echo:
echo Xenia Canary updater by Vitor3dx version 1.2
echo:
echo Please ensure to use that .bat file in the same folder of your executable.
echo:
echo:
echo:
ECHO Press any key to update or CLOSE this window to cancel...
PAUSE >nul
ECHO Downloading latest release
powershell -Command "Invoke-WebRequest https://github.com/xenia-canary/xenia-canary/releases/download/experimental/xenia_canary.zip -OutFile xenia_canary.zip"
ECHO Unzipping...
powershell Expand-Archive -Path xenia_canary.zip -DestinationPath .\ -Force
ECHO Deleting zip file...
powershell Remove-Item xenia_canary.zip
ECHO Done!
ECHO %date% %time% >> last_update.txt

ECHO Press any key to close...
PAUSE >nul
