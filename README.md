
<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND — Agent Not Detect" width="600">
</p>

# AND — Agent Not Detect

> **Agent-install only.** Humans: tell your agent to install AND. It handles the rest.

AND is a multi-platform reference library providing jailbreak techniques, system prompt leaks, and adversarial prompts for 27+ AI vendors. Designed to be installed and triggered automatically by AI coding agents.

---

## Demo

### Install (Agent does the work)
<p align="center">
  <img src="assets/sim-install.png" alt="AND install simulation" width="720">
</p>

### Trigger (Auto-detect on keyword)
<p align="center">
  <img src="assets/sim-trigger.png" alt="AND trigger simulation" width="720">
</p>

### Dashboard (Multi-platform status)
<p align="center">
  <img src="assets/sim-dashboard.png" alt="AND dashboard" width="720">
</p>

---

## Install

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent will detect its platform and run the correct installer. No manual steps needed.

## Supported Platforms

| Platform | Install Path | Auto-trigger |
|----------|-------------|-------------|
| **Hermes (OpenClaw)** | `.openclaw-autoclaw/skills/and/` | SKILL.md keyword detection |
| **Claude Code CLI** | `.claude/and/` | CLAUDE.md rules |
| **Codex CLI** | `.codex/and/` | .codex rules |
| **OpenCode** | `.opencode/and/` | AND.md rules |
| **CommandCode** | `.commandcode/and/` | .commandcode rules |

## Triggers

Say any of these and AND activates automatically:

`jailbreak` `godmode` `unfiltered` `bypass` `AND` `Pliny` `system prompt` `!JAILBREAK` `!GODMODE` `!OMNI` `liberate` `red team`

## Library

```
and-references/              ← 41 reference files
├── ANTHROPIC.mkd            — Claude Opus/Sonnet
├── OPENAI.mkd               — GPT-4o, o1
├── GOOGLE.mkd               — Gemini
├── DEEPSEEK.mkd             — DeepSeek
├── META.mkd, XAI.mkd, ...   — 27+ vendors
├── SYSTEMPROMPTS.mkd        — Leaked system prompts
├── SHORTCUTS.json           — 35+ commands
├── AAA.mkd                  — Universal jailbreak
└── MOTHERLOAD.txt           — Mega compilation
and-scripts/
└── search.py                — Cross-file keyword search
```

## Source

<https://github.com/adlptv/Agent-AND.git>
