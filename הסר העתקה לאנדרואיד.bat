@echo off
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && reg.exe query "HKU\S-1-5-19" 1>nul 2>nul || (  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0""", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo yes | reg delete HKEY_CLASSES_ROOT\*\shell\copyfiletowsa
del /q "C:\Program Files\Copy_file_to_wsa\*.*"
exit
