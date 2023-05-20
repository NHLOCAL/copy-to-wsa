@echo off

tasklist | find "GSKServer.exe"
if errorlevel 1 start wsa:// & timeout 7
cd %~dp0\platform-tools\
adb connect 127.0.0.1:58526.
adb push %1  ./storage/emulated/0/Download

exit
rem כל הזכויות שמורות ל-NH.LOCAL11@GMAIL.com
rem ניתן להעתיק ולהפיץ בשמחה