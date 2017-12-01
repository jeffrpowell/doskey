taskkill /F /IM memcached.exe /T
C:
cd /D "\Program Files\memcached-x86"
start memcached.exe -m 512 -d