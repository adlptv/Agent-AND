Write-Host "=== AND + PINTAR — Hermes Skill Installer ===" -ForegroundColor Cyan
$skillBase = Split-Path -Parent $MyInvocation.MyCommand.Path
$destHome = "$env:USERPROFILE\.openclaw-autoclaw\skills"

# Install AND skill
$andDest = "$destHome\and"
if (Test-Path $andDest) { Remove-Item -Recurse -Force $andDest }
Copy-Item -Recurse -Force "$skillBase\and-skill" $andDest
Write-Host "  AND installed: $andDest" -ForegroundColor Green

# Install PINTAR skill
$pintarDest = "$destHome\pintar"
if (Test-Path $pintarDest) { Remove-Item -Recurse -Force $pintarDest }
Copy-Item -Recurse -Force "$skillBase\..\pintar" $pintarDest
Write-Host "  PINTAR installed: $pintarDest" -ForegroundColor Green

# Init memory
python3 "$pintarDest\scripts\learn.py" --log installation "AND+PINTAR installed on Hermes" 2>$null

Write-Host "`nAND + PINTAR installed." -ForegroundColor Green
Write-Host "Hermes is now PINTAR (multi-domain expert)." -ForegroundColor Cyan
Write-Host "Restart: openclaw gateway restart" -ForegroundColor Yellow
