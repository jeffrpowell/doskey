@echo off
REM 1 run regedit
REM 2 navigate to the HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor key
REM 3 add a new string value called "AutoRun" and set the value to "U:\helpful code\doskey.bat"

SET MYUSER="C:\dev\user\jeffpowell\"

doskey cdam=cd C:\dev\projects\asset-manager-tools\$*
doskey cdamw=cd C:\dev\projects\asset-manager-tools\asset-manager-web\$*
doskey cdpuppet=cd C:\puppet\puppet ^& git pull
doskey restartnginx=call "U:\helpful code\nginx.bat"
doskey myuser=cd %MYUSER%$* $T dir /B

doskey aliases=doskey /macros

REM echo. & echo Doskey macros applied; type 'aliases' for a list of options