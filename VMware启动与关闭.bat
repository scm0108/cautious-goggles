@echo off
:input
title VMware网卡启动关闭命令窗口
::bat标题
set /p "num=输入1（禁用）或者2（启用），然后按下回车键："
if "%num%"=="1" cls & goto 1
if "%num%"=="2" cls & goto 2
echo. & echo 不能输入除了“1”和“2”之外的其他字符！ & pause>nul & cls & goto input
:1
echo 现在正在执行代码1.
netsh interface set interface "VMware Network Adapter VMnet1" disabled
netsh interface set interface "VMware Network Adapter VMnet8" disabled
netsh interface set interface "VirtualBox Host-Only Network" disabled
echo 已完成VMware网卡禁用！按回车键键退出
pause>nul
exit
:2
echo 现在正在执行代码2.
netsh interface set interface "VMware Network Adapter VMnet1" enabled
netsh interface set interface "VMware Network Adapter VMnet8" enabled
netsh interface set interface "VirtualBox Host-Only Network" enabled
echo 已完成VMware网卡启用！按回车键键退出
pause>nul