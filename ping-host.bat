@echo off
setlocal enabledelayedexpansion
set failCount=0
:loop
    REM 注释：请自行修改下方Ip为老板的ip或者他的主机名
    ping -n 1 192.168.234.135 | findstr "无法访问目标主机"

    if errorlevel 1 (
        echo host在线
        set failCount=0
        color 07
        REM 注释：请自行修改下方/t 后面的数字
        timeout /t 5
    ) else (
        set /a failCount=!failCount!+1
        echo 不通次数!failCount!
        REM 注释：请自行修改下方/t 后面的数字
        timeout /t 3
    )
    if !failCount! geq 5 (
        echo 连续!failCount!次未ping通
        color 0A
    ) else (
        color 0E
    )
    echo.
goto loop
