> Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
Get-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'

echo "Fixing Linux_Remote login issue:"
echo "MaxAuthTries 20" | Add-Content -Path C:\ProgramData\ssh\sshd_config
Restart-Service sshd
