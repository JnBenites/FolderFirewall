for /r "C:\Program Files\Adobe" %%F in (*.exe) do (
    echo %%F
    netsh advfirewall firewall add rule name="%%~nxF_out" dir=out action=block program="%%F" enable=yes
    netsh advfirewall firewall add rule name="%%~nxF_in" dir=in action=block program="%%F" enable=yes
)

pause