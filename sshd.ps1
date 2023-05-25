> Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
Get-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'

echo "> allow root login? ... add the following configs:"
echo "PermitRootLogin no"
echo "MaxAuthTries 20"
start-process notepad C:\Programdata\ssh\sshd_config
