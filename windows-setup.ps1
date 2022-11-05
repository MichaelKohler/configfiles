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

$apps = @(
    "Docker.DockerDesktop",
    "Git.Git",
    "Google.Chrome",
    "Insomnia.Insomnia",
    "Joplin.Joplin",
    "KDE.Krita",
    "Microsoft.PowerToys"
    "Microsoft.VisualStudio.2019.Community",
    "Microsoft.VisualStudioCode",
    "Mozilla.Firefox.Nightly",
    "Mozilla.VPN",
    "Nextcloud.NextcloudDesktop",
    "OBSProject.OBSStudio",
    "OpenJS.NodeJS",
    "ProtonTechnologies.ProtonVPN",
    "RARLab.WinRAR",
    "RaspberryPiFoundation.RaspberryPiImager",
    "VideoLAN.VLC",
    "VMware.WorkstationPlayer",
    "ZeroTier.ZeroTierOne",
    "Zoom.Zoom"
)

foreach ($app in $apps) {
    winget install $app
}

Write-Host "TODO:"
Write-Host "    - Resolution + Scaling"
Write-Host "    - Cleanup taskbar + settings"
Write-Host "    - Remove unwanted programs"
Write-Host "    - Windows Update Channel"
Write-Host "    - General Windows settings"
Write-Host "    - Windows Features -> WSL + wsl --set-default-version 2"
