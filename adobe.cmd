@echo off
set /p directory=Enter the directory path (e.g., C:\Program Files\Adobe): 

for /r "%directory%" %%F in (*.exe) do (
    echo Blocking %%F
    netsh advfirewall firewall add rule name="%%~nxF_out" dir=out action=block program="%%F" enable=yes
    netsh advfirewall firewall add rule name="%%~nxF_in" dir=in action=block program="%%F" enable=yes
)

pause
