# Changelog

## v2.0.2 (2026-07-01)

### Research-Based Platform Rebuild
- **Removed**: Kimi (not a coding CLI), Cursor plugin manifest (no real plugin system)
- **Added**: Gemini CLI (`gemini-extension.json` + `GEMINI.md`), Pi Code (`package.json` + `.pi/extensions/and.ts`), Hermes Agent (`.hermes-plugin/plugin.yaml` + `after-install.md`)
- **Split**: Hermes Agent vs OpenClaw — separate platform entries with different install paths
- **Fixed**: OpenCode skill copy path (`%APPDATA%/opencode` on Windows, `~/.config/opencode` on Linux)
- **Fixed**: ai-research SKILL.md now uses explicit delivery protocol instead of "describe"
- **Fixed**: AGENTS.md rewritten with research-based per-platform install steps
- **Fixed**: README split into Plugin+Skills vs Skills-Only sections
- **Fixed**: Encoding issues (corrupt emoji/special chars)

### Platform Matrix
| # | Platform | Type | Install Path |
|---|----------|------|-------------|
| 1 | Claude Code | Plugin + Skills | `~/.claude/and-skills/` |
| 2 | Codex CLI | Plugin + Skills | `~/.codex/and-skills/` |
| 3 | Gemini CLI | Plugin + Skills | `~/.gemini/and-skills/` |
| 4 | Pi Code | Plugin + Skills | `skills/` (bundled) |
| 5 | Hermes Agent | Plugin + Skills | `~/.hermes/skills/` + `hermes plugins install` |
| 6 | OpenClaw | Skills Only | `~/.openclaw-autoclaw/skills/` |
| 7 | Cursor | Skills Only | `~/.cursor/and-skills/` |
| 8 | Aider | Skills Only | `~/.aider/and-skills/` |

---

## v2.0.1 (2026-06-30)

### AND Branding — Per-Platform Agent Names
- All agents rebranded: AI-RESEARCH, AND CODING, AND SECURITY, AND DEVOPS, AND DOCUMENTS, AND TRADING, AND INSTALLATION
- Per-platform agent files: CLAUDE.md (.claude-plugin), AGENTS.md (.codex-plugin)
- Public descriptions use neutral development terminology for compatibility

---

## v2.0.0 (2026-06-30)

### Subagent Architecture
- Complete restructure to subagent-powered plugin system
- 5 platform manifests: Claude Code, Codex, Cursor, Gemini CLI, Hermes
- AGENTS.md orchestration with parallel dispatch

---

## v1.0.0 (2026-06-30)

### Initial Release
- Multi-domain development module
- 5 platform installers