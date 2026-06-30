# AND — Agent Not Detect — Install All Platforms
# Run by your AI agent. Not meant for manual execution.
$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$user = $env:USERPROFILE
$refs = "$scriptDir\and-references"
$search = "$scriptDir\and-scripts\search.py"

Write-Host "`n=== AND (Agent Not Detect) — Multi-Platform Installer ===`n" -ForegroundColor Cyan

# Claude Code
Write-Host "[1/4] Claude Code..." -ForegroundColor Yellow
$dest = "$user\.claude\and\references"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Recurse -Force "$refs\*" $dest
$scriptDest = "$user\.claude\and\scripts"
New-Item -ItemType Directory -Force -Path $scriptDest | Out-Null
Copy-Item -Force $search $scriptDest
Copy-Item -Force "$scriptDir\claude\AND.md" "$user\.claude\AND.md"
Write-Host "  ✅ Claude Code — AND installed" -ForegroundColor Green

# Codex CLI
Write-Host "[2/4] Codex CLI..." -ForegroundColor Yellow
$dest = "$user\.codex\and\references"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Recurse -Force "$refs\*" $dest
$scriptDest = "$user\.codex\and\scripts"
New-Item -ItemType Directory -Force -Path $scriptDest | Out-Null
Copy-Item -Force $search $scriptDest
Copy-Item -Force "$scriptDir\codex\AND.md" "$user\.codex\AND.md"
Write-Host "  ✅ Codex CLI — AND installed" -ForegroundColor Green

# OpenCode
Write-Host "[3/4] OpenCode..." -ForegroundColor Yellow
$dest = "$user\.opencode\and\references"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Recurse -Force "$refs\*" $dest
$scriptDest = "$user\.opencode\and\scripts"
New-Item -ItemType Directory -Force -Path $scriptDest | Out-Null
Copy-Item -Force $search $scriptDest
Copy-Item -Force "$scriptDir\opencode\AND.md" "$user\.opencode\AND.md"
Write-Host "  ✅ OpenCode — AND installed" -ForegroundColor Green

# CommandCode
Write-Host "[4/4] CommandCode..." -ForegroundColor Yellow
$dest = "$user\.commandcode\and\references"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Recurse -Force "$refs\*" $dest
$scriptDest = "$user\.commandcode\and\scripts"
New-Item -ItemType Directory -Force -Path $scriptDest | Out-Null
Copy-Item -Force $search $scriptDest
Copy-Item -Force "$scriptDir\commandcode\AND.md" "$user\.commandcode\AND.md"
Write-Host "  ✅ CommandCode — AND installed" -ForegroundColor Green

Write-Host "`n=== AND installed on 4 platforms. Agent Not Detect. ===" -ForegroundColor Cyan
