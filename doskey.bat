@echo off
REM 1 run regedit
REM 2 navigate to the HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor key
REM 3 add a new string value called "AutoRun" and set the value to "U:\helpful code\doskey.bat"

SET MYUSER="C:\dev\user\jeffpowell\"
SET CODEPATH="C:\code\jeffpowell\"

REM Navigation
doskey cdg=cd %CODEPATH%$*
doskey cdgb=cd %CODEPATH%$* ^& call "gitrepo.bat"
doskey myuser=cd %MYUSER%$* $T dir /B

REM Starting/Stopping applications
doskey restartnginx=call "nginx.bat"
doskey stoptomcat=call "skinthecat.bat"
doskey memcached=call "memcached.bat"
doskey startmongo=start mongod --auth --dbpath /data/db

REM File Management
doskey build=npm install $T npm run dev-build
doskey puppetb=call "puppetBranch.bat" $1
doskey gitrepo=call "gitrepo.bat"

REM Table of Contents
doskey aliases=doskey /macros

REM echo. & echo Doskey macros applied; type 'aliases' for a list of options