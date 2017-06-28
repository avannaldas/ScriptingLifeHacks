echo off

rem Make a tiny window enough to show a single line message
mode con: cols=50 lines=2
cls

rem Print one time message
echo Just keeping the computer awake

:loop
rem Ping once, throw away standard output
ping 1.1.1.1 -n 1 > nul

rem Wait for 5 minutes, throw away standard output
timeout 300 > nul

rem Repeat
goto loop
