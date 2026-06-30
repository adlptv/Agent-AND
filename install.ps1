# AND — Agent Not Detect — Universal Installer
# Detects installed platforms and copies skills + configs locally
param([switch]$All)

$ErrorActionPreference = "SilentlyContinue"
$user = $env:USERPROFILE
$repo = Split-Path -Parent $MyInvocation.MyCommand.Path
$skills = "$repo\skills"

Write-Host "`n=== AND — Agent Not Detect v2.0.1 ===`n" -ForegroundColor Cyan

# ===== CLAUDE CODE =====
$claudeCode = Get-Command claude -ErrorAction SilentlyContinue
if ($claudeCode -or $All) {
    Write-Host "[Claude Code]" -ForegroundColor Yellow
    $dest = "$user\.claude\and-skills"
    Remove-Item -Recurse -Force $dest -ErrorAction SilentlyContinue
    Copy-Item -Recurse "$skills" $dest -Force
    Copy-Item "$repo\.claude-plugin\CLAUDE.md" "$user\.claude\CLAUDE.md" -Force
    Write-Host "  Skills -> $dest" -ForegroundColor Green
    Write-Host "  CLAUDE.md -> $user\.claude\" -ForegroundColor Green
}

# ===== CODEX CLI =====
$codex = Get-Command codex -ErrorAction SilentlyContinue
if ($codex -or $All) {
    Write-Host "[Codex CLI]" -ForegroundColor Yellow
    $dest = "$user\.codex\and-skills"
    Remove-Item -Recurse -Force $dest -ErrorAction SilentlyContinue
    Copy-Item -Recurse "$skills" $dest -Force
    Copy-Item "$repo\.codex-plugin\AGENTS.md" "$user\.codex\AND.md" -Force
    Write-Host "  Skills -> $dest" -ForegroundColor Green
}

# ===== CURSOR =====
$cursorHome = "$user\AppData\Local\Programs\cursor"
if ((Test-Path $cursorHome) -or $All) {
    Write-Host "[Cursor]" -ForegroundColor Yellow
    $dest = "$user\.cursor\and-skills"
    Remove-Item -Recurse -Force $dest -ErrorAction SilentlyContinue
    Copy-Item -Recurse "$skills" $dest -Force
    Copy-Item "$repo\.cursor-plugin\AGENTS.md" "$user\.cursor\AGENTS.md" -Force
    Write-Host "  Skills -> $dest" -ForegroundColor Green
}

# ===== OPENCODE =====
$opencode = Get-Command opencode -ErrorAction SilentlyContinue
if ($opencode -or $All) {
    Write-Host "[OpenCode]" -ForegroundColor Yellow
    $dest = "$user\.opencode\and-skills"
    Remove-Item -Recurse -Force $dest -ErrorAction SilentlyContinue
    Copy-Item -Recurse "$skills" $dest -Force
    Copy-Item "$repo\.opencode\plugins\and.js" "$user\.opencode\plugins\and.js" -Force
    Copy-Item "$repo\.opencode\CODEBUDDY.md" "$user\.opencode\CODEBUDDY.md" -Force
    Write-Host "  Skills -> $dest" -ForegroundColor Green
    Write-Host "  Plugin -> $user\.opencode\plugins\" -ForegroundColor Green
}

# ===== HERMES (OpenClaw) =====
$hermes = Test-Path "$user\.openclaw-autoclaw"
if ($hermes -or $All) {
    Write-Host "[Hermes / OpenClaw]" -ForegroundColor Yellow
    $destSkills = "$user\.openclaw-autoclaw\skills"
    $skillDirs = Get-ChildItem -Directory "$skills"
    foreach ($sd in $skillDirs) {
        $target = "$destSkills\$($sd.Name)"
        Remove-Item -Recurse -Force $target -ErrorAction SilentlyContinue
        Copy-Item -Recurse $sd.FullName $target -Force
        Write-Host "  Skill: $($sd.Name)" -ForegroundColor Green
    }
    Write-Host "  All 7 skills registered" -ForegroundColor Green
}

Write-Host "`n=== Done. Restart your agent to load AND agents. ===" -ForegroundColor Cyan
