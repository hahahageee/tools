@echo off
setlocal enabledelayedexpansion
set failCount=0
:loop
    REM ע�ͣ��������޸��·�IpΪ�ϰ��ip��������������
    ping -n 1 192.168.234.135 | findstr "�޷�����Ŀ������"

    if errorlevel 1 (
        echo host����
        set failCount=0
        color 07
        REM ע�ͣ��������޸��·�/t ���������
        timeout /t 5
    ) else (
        set /a failCount=!failCount!+1
        echo ��ͨ����!failCount!
        REM ע�ͣ��������޸��·�/t ���������
        timeout /t 3
    )
    if !failCount! geq 5 (
        echo ����!failCount!��δpingͨ
        color 0A
    ) else (
        color 0E
    )
    echo.
goto loop
