Write-Output "Purple Haze Software Set-up Utility"

Write-Output "Intall Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Output "Intall Software"
choco install -y ni-frcgametools
choco install -y ctre-phoenixframework
choco install -y revrobotics-hardwareclient
choco install -y frc-radioconfigurationutility
choco install -y openjdk
choco install -y git
choco install wpilib --params="/AllowUserInteraction:true"

Write-Output "Intall VS Code Extensions"
code --install-extension eamodio.gitlens
code --install-extension vscjava.vscode-java-pack