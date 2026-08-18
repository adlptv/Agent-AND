# Changelog

## v2.1.0 (2026-08-19)

### New Agent: AND JAILBREAK
- Added `skills/and-jailbreak/` — LLM jailbreaking skill ported from the Hermes GODMODE skill and extended:
  - **GODMODE CLASSIC**: 10 system-prompt templates (boundary inversion, liberated, refusal inversion, OG l33t, DAN, developer mode, multi-turn, code framing, translation pivot)
  - **PARSELTONGUE**: 33 input-obfuscation techniques across 3 tiers (leetspeak → bubble → braille → morse → hex/base64)
  - **ULTRAPLINIAN**: multi-model racing engine (55 models, 5 tiers) with refusal/hedge scoring
  - **NEW `jailbreak_kit.py`**: one-call multi-vector pipeline — tries direct → prefill → templates → parseltongue ladder → multi-turn progressive alignment → code framing → translation pivot → racing, stops at first compliant response
  - **NEW multi-turn progressive alignment**: highest-yield technique for modern models — builds an uncensored persona frame over benign turns, no single message looks like a jailbreak
  - Strategy matrix per model family (Claude, GPT, Gemini, Grok, DeepSeek, Qwen, GLM, Kimi, Llama, Mistral, Hermes)
  - Auto-jailbreak pipeline (`auto_jailbreak.py`): detects model, tests strategies live, persists winner to config
  - Location-agnostic scripts — work from the AND repo or any Hermes install
- Updated README, after-install.md, AGENTS.md, install.ps1: 7 → 8 agents

---

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