@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
echo .
icacls.exe "C:\Program Files\dotnet" /grant "*S-1-15-2-1:(oi)(ci)(rx)"
echo.
icacls.exe "C:\Program Files\dotnet" /grant "*S-1-15-2-2:(oi)(ci)(rx)"
echo .
echo Vortex might be able to install mods now
echo .
pause