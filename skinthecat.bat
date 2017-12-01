@echo off
set OUTPUT=-1
for /f "tokens=1" %%i in ('jps -v ^| findstr /C:"tomcat"') do set OUTPUT=%%i
if not %OUTPUT%==-1 (
	echo TASKKILL /PID %OUTPUT% /F /T > killjavapid.bat
	CALL killjavapid.bat
	DEL killjavapid.bat
)
if %OUTPUT%==-1 (
	echo Error: Failed to find tomcat process.
)