Write-Host "=== AND — Agent Not Detect — Hermes Skill Installer ===" -ForegroundColor Cyan
$skillDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$dest = "$env:USERPROFILE\.openclaw-autoclaw\skills\and"

if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
Copy-Item -Recurse -Force "$skillDir\and-skill" $dest

Write-Host "`nAND installed on Hermes. Agent Not Detect." -ForegroundColor Green
Write-Host "Restart: openclaw gateway restart" -ForegroundColor Yellow
