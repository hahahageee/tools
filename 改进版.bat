@echo off

set /p min=��������ٷ��Ӻ�ػ�

set /a sec=%min%*60

echo %min%���Ӻ󽫹ػ�

ping 127.0.0.1 -n %sec% > nul

shutdown /s /t 0 /f