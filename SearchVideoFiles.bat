@echo off
REM �뱣���bat�ļ�������Ҽ��������ԱȨ������
REM ����ʱ���ϳ��������ĵȴ�
setlocal enabledelayedexpansion
REM ����������ɾ��һ���У���������Ҫ���̷����ո�ָ���
for %%i in (c d e) do (
    set "command="
    REM ����������ɾ��һ���У���������Ҫ�ĵ���Ƶ��չ�����ո�ָ���
    for %%j in (mp4 mov qt avi flv wmv asf ppeg mpg vob mkv asf rm rmvb) do (
        set "command=!command! %%i:\*.%%j"

    )
    echo ����ִ�� dir !command! /s /a /b
    REM ��Ĭ�Ͻ����������C�̸�Ŀ¼01.txt�ļ��ڣ��������޸ġ�
    dir !command! /s /a /b >>c:\01.txt
)