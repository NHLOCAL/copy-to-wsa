@echo off
MODE CON COLS=30 lines=10
tasklist | find "GSKServer.exe"
if errorlevel 1 start wsa:// & timeout 7
adb connect 127.0.0.1:58526.
adb push %1  ./storage/emulated/0/Download