@echo off
color 0a
netsh wlan set hostednetwork mode=allow ssid="Windows Wifi" key="password"
netsh wlan start hostednetwork
:a
cls
echo commands : 
echo [c] to see clients
echo [p] to change password
echo [s] to stop access point
echo [r] to restart access point
set choice=
set /p choice= : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='c' (start clients.bat)
if '%choice%'=='s' (start stop.bat)
if '%choice%'=='r' (
netsh wlan stop hostednetwork
netsh wlan start hostednetwork
)
if '%choice%'=='p' (
set pass=
echo password must contain more than 8 characters
set /p pass= Enter new password : 
if not 'pass'=='' (netsh wlan set hostednetwork mode=allow ssid="Windows Wifi" key="%pass%")
)
goto :a



:pass
