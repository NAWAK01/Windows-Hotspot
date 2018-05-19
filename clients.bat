@echo off
color 9
:a
cls
netsh wlan show hostednetwork
TIMEOUT /T 5
goto :a