@echo off
:: Check for admin privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Running JARVIS Server with Admin Privileges...
    python server.py
) else (
    echo Requesting Admin Privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c cd /d %CD% && python server.py' -Verb RunAs"
)
