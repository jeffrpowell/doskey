@echo off
REM 1 run regedit
REM 2 navigate to the HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor key
REM 3 add a new string value called "AutoRun" and set the value to "U:\helpful code\doskey.bat"

SET MYUSER="C:\dev\user\jeffpowell\"
SET LOGFORMAT="%%h < %%p: %%s (%%an)"

REM Navigation
doskey cdam=cd C:\dev\projects\asset-manager-tools\$*
doskey cdamw=cd C:\dev\projects\asset-manager-tools\asset-manager-web\$*
doskey cdpuppet=cd C:\puppet\puppet $T git pull
doskey myuser=cd %MYUSER%$* $T dir /B

REM Starting/Stopping applications
doskey restartnginx=call "U:\helpful code\nginx.bat"
doskey stoptomcat=call "U:\helpful code\skinthecat.bat"
doskey memcached=call "U:\helpful code\memcached.bat"
doskey startmongo=start mongod --auth --dbpath /data/db

REM File Management
doskey build=npm install $T npm prune $T npm run dev-build
doskey puppetb=call "U:\helpful code\puppetBranch.bat" $1
doskey gitgraph=git log --graph --pretty=format:%LOGFORMAT%

REM Table of Contents
doskey aliases=doskey /macros

REM echo. & echo Doskey macros applied; type 'aliases' for a list of options
