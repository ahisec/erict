@echo off
title Ӧ����Ӧ��Ϣ�ɼ�����V1.4
@echo ================================
@echo * Ӧ����Ӧ��Ϣ�ɼ����� *
@echo                By:Ahi
@echo       http://blog.rip2.vip 
@echo ================================

color 0a
cd  %~dp0
set "filename=%date:~0,4%%date:~5,2%%date:~8,2%"
mkdir .\%filename%\
echo "��ʼ�ռ������б�"
wmic process  get name,processid,executablepath /format:htable > ./%filename%/tasklist.html
echo "�����б��ռ����"
@echo ================================

echo "��ʼ�ռ�ϵͳ����"
wmic service get Name,Description,Caption,DisplayName,ProcessId,started,StartMode,StartName,State,Status,AcceptPause,AcceptStop,PathName /format:htable > ./%filename%/service.html
echo "ϵͳ�����ռ����"
@echo ================================

echo "��ʼ�ռ�ϵͳ��־"
xcopy  C:\Windows\System32\winevt\Logs  .\%filename%\logs\ /Y >nul
echo "ϵͳ��־�ռ����"
@echo ================================

echo "��ʼ�ռ���������"
netstat -ano > ./%filename%/netstat.txt
echo "���������ռ����"
@echo ================================

echo "��ʼ�ռ��˻���Ϣ"
wmic USERACCOUNT list /format:htable >  ./%filename%/account.html
echo "�˻���Ϣ�ռ����"
@echo ================================

echo "��ʼ�ռ�������Ϣ"
wmic share list /format:htable > ./%filename%/netshare.html
echo "������Ϣ�ռ����"
@echo ================================



echo "��ʼ�ռ�·�ɱ�"
route print > ./%filename%/route.txt
echo "·�ɱ��ռ����"
@echo ================================


echo "��ʼ�ռ�HOSTS"
xcopy  C:\Windows\System32\drivers\etc  .\%filename%\etc\ /Y >nul
echo "HOSTS�ռ����"
@echo ================================


echo "��ʼ�ռ�mstsc"
reg export   "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default" ".\%filename%\mstsc.txt" /y >nul
echo "mstsc�ռ����"
@echo ================================


echo "��ʼ�ռ�ע���������"
reg export  "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" ".\%filename%\autorun.txt"  /y >nul
echo "ע����������ռ����"
@echo ================================


echo "��ʼ�ռ��Ѱ�װ�����Ϣ"
reg export  "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" ".\%filename%\software.txt" /y >nul
echo "�Ѱ�װ�����Ϣ�ռ����"
@echo ================================

echo "��ʼ�ռ��ƻ�����"
schtasks /query /v /fo list > ./%filename%/schtasks.txt
echo "�ƻ������ռ����"
@echo ================================

echo "��ʼARP��"
arp -a > ./%filename%/arp.txt
echo "�ƻ������ռ����"
@echo ================================


echo "��ʼ�ռ�ϵͳ��Ϣ"
systeminfo > ./%filename%/systeminfo.txt
echo "ϵͳ��Ϣ�ռ����"
@echo ================================

echo "��ʼ�ռ�������Ϣ"
wmic qfe list /format:htable > ./%filename%/hotfix.html
echo "������Ϣ�ռ����"
@echo ================================

echo "��ʼ�ռ�powershell��ʷ����"
copy  %userprofile%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt .\%filename%\ConsoleHost_history.txt /Y >nul
copy  %appdata%\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt .\%filename%\ConsoleHost_history_1.txt /Y >nul
echo "��ʼpowershell�ռ����"

echo "��Ϣ�ɼ���ϣ����ݴ���ڵ�ǰĿ¼%filename%��"
pause>nul



