@echo off
setlocal enabledelayedexpansion
set "HOOK_DIR=%~dp0"
set "HOOK_NAME=%~1"
set "SKILLS_DIR=%CLAUDE_PLUGIN_ROOT%\skills"

if "%HOOK_NAME%"=="session-start" (
  echo [AND] Agent Not Detect v2.0.1
  echo [AND] Loading 7 subagents from %SKILLS_DIR%
  for /d %%d in ("%SKILLS_DIR%\*") do (
    if exist "%%d\SKILL.md" (
      echo [AND]   Registered: %%~nd
    )
  )
  echo [AND] Ready. 7 agents available.
)
