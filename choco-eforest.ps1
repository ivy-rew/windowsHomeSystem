Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
echo "closing shell: re-open to have 'choco' on path"
exit

choco install -y 7zip
choco install -y sysinternals
choco install -y vlc
choco install -y keepass
