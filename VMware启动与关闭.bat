@echo off
:input
title VMware���������ر������
::bat����
set /p "num=����1�����ã�����2�����ã���Ȼ���»س�����"
if "%num%"=="1" cls & goto 1
if "%num%"=="2" cls & goto 2
echo. & echo ����������ˡ�1���͡�2��֮��������ַ��� & pause>nul & cls & goto input
:1
echo ��������ִ�д���1.
netsh interface set interface "VMware Network Adapter VMnet1" disabled
netsh interface set interface "VMware Network Adapter VMnet8" disabled
netsh interface set interface "VirtualBox Host-Only Network" disabled
echo �����VMware�������ã����س������˳�
pause>nul
exit
:2
echo ��������ִ�д���2.
netsh interface set interface "VMware Network Adapter VMnet1" enabled
netsh interface set interface "VMware Network Adapter VMnet8" enabled
netsh interface set interface "VirtualBox Host-Only Network" enabled
echo �����VMware�������ã����س������˳�
pause>nul