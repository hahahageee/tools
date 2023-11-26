@echo off
REM 请保存成bat文件，鼠标右键点击管理员权限运行
REM 搜索时间会较长，请耐心等待
setlocal enabledelayedexpansion
REM 【请自行增删下一行中，括号内需要的盘符，空格分隔】
for %%i in (c d e) do (
    set "command="
    REM 【请自行增删下一行中，括号内需要的的视频扩展名，空格分隔】
    for %%j in (mp4 mov qt avi flv wmv asf ppeg mpg vob mkv asf rm rmvb) do (
        set "command=!command! %%i:\*.%%j"

    )
    echo 将会执行 dir !command! /s /a /b
    REM 【默认将结果保存在C盘根目录01.txt文件内，可自行修改】
    dir !command! /s /a /b >>c:\01.txt
)