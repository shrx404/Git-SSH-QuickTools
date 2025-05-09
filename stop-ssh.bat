@echo off
REM Check if ssh-agent is running
tasklist /FI "IMAGENAME eq ssh-agent.exe" 2>NUL | find /I "ssh-agent.exe" > NUL

IF NOT ERRORLEVEL 1 (
    echo ssh-agent.exe is running. Terminating process...
    taskkill /F /IM ssh-agent.exe
    echo Process terminated successfully.
) ELSE (
    echo ssh-agent.exe is not running.
)

pause
