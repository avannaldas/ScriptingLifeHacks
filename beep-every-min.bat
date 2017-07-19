echo off

rem Make a tiny window enough to show a single line message
mode con: cols=60 lines=2
cls

:loop

rem Print a message
echo Beeping every min to keep bluetooth headset connected

rem Wait for a minute, throw away standard output
timeout /t 60 > nul

rem Beep using python
python -c "print('\7')"

rem Repeat
goto loop
