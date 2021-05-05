Write-Host "Applying Power Settings"
Powercfg /Change monitor-timeout-ac 20
Powercfg /Change standby-timeout-ac 0

Write Host "Uninstalling unwanted apps"
$uwpRubbishApps = @(
    "Microsoft.Messaging",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.YourPhone",
    "Microsoft.MicrosoftOfficeHub"
)

foreach ($uwp in $uwpRubbishApps) {
    Get-AppxPackage -Name $uwp | Remove-AppxPackage
}

Write-Host "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "Installing Applications"

$apps = @(
    "winrar",
    "googlechrome",
    "vlc",
    "wget",
    "vscode",
    "sysinternals",
    "insomnia-rest-api-client",
    "nodejs",
    "docker-desktop",
    "spotify",
    "protonvpn"
)

foreach ($app in $apps) {
    choco install $app -y
}

Write-Host "TODO:"
Write-Host "    - Resolution + Scaling"
Write-Host "    - Cleanup taskbar + settings"
Write-Host "    - Remove unwanted programs"
Write-Host "    - Windows Update Channel"
Write-Host "    - General Windows settings"
Write-Host "    - Windows Features -> WSL + wsl --set-default-version 2"
Write-Host ""
Write-Host "Don't forget to install Firefox, Tresorit and some Linux magic!"