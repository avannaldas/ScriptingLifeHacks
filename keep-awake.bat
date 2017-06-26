echo off
mode con: cols=50 lines=2
cls
echo Just keeping the computer awake
:loop
ping 1.1.1.1 -n 1 -w 60000 > nul
goto loop
