@echo off

set /p min=请输入多少分钟后关机

set /a sec=%min%*60

echo %min%分钟后将关机

ping 127.0.0.1 -n %sec% > nul

shutdown /s /t 0 /f