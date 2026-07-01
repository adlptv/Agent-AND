<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> &mdash; 7 multi-domain agents.<br>
  Plugin + Skills for Claude Code, Codex, Gemini, Pi Code.<br>
  Skills-only for Hermes, Cursor, Aider.
</p>

---

## Install

Tell your AI agent:

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent reads `AGENTS.md`, detects its platform, and installs automatically.

---

## Supported Platforms

### Plugin + Skills (full integration)

| Platform | Manifest | Install | Skills | Sub-agents |
|----------|----------|---------|:---:|:---:|
| **Claude Code** | `.claude-plugin/plugin.json` | `/plugin` command | `~/.claude/and-skills/` | via `agents/` |
| **Codex CLI** | `.codex-plugin/plugin.json` | `codex plugin add` | `~/.codex/and-skills/` | via `agents/` |
| **Gemini CLI** | `gemini-extension.json` | `gemini extensions link` | `~/.gemini/and-skills/` | via `agents/` |
| **Pi Code** | `package.json` (pi field) | auto-load | `skills/` (bundled) | via extension |

### Skills Only (manual copy)

| Platform | Skills Path | Load Mechanism |
|----------|------------|---------------|
| **Hermes (OpenClaw)** | `~/.openclaw-autoclaw/skills/` | Auto-discover SKILL.md |
| **Cursor** | `~/.cursor/and-skills/` | `.cursorrules` reference |
| **Aider** | `~/.aider/and-skills/` | Config reference |

---

## Agents

| # | Agent | Domain |
|---|-------|--------|
| 1 | **AI-RESEARCH** | AI vendor documentation, system configs, technical analysis |
| 2 | **AND CODING** | Full-stack, reverse engineering, architecture |
| 3 | **AND SECURITY** | Security analysis, OWASP, pentesting |
| 4 | **AND DEVOPS** | Docker, Kubernetes, CI/CD, cloud |
| 5 | **AND DOCUMENTS** | Word, Excel, PowerPoint, PDF |
| 6 | **AND TRADING** | Crypto, stocks, forex, backtesting |
| 7 | **AND INSTALLATION** | Package managers, system paths |

---

## How It Works

1. You tell your agent to install AND
2. Agent clones repo, reads `AGENTS.md`
3. Agent detects its platform type (Plugin+Skills or Skills-Only)
4. Agent copies `skills/` to the correct local directory
5. Agents appear as selectable skills/subagents in your platform

---

## Repository

```
skills/                 7 agents (SKILL.md + references/)
  ai-research/          41 vendor reference files
  and-coding/           full-stack + reverse engineering
  and-security/         OWASP + pentesting refs
  and-devops/           Docker, K8s, cloud refs
  and-documents/        Word, Excel, PPT, PDF refs
  and-trading/          crypto, stocks, forex refs
  and-installation/     package managers + paths refs
AGENTS.md               self-install guide for any agent
install.ps1 / install.sh   manual fallback scripts
GEMINI.md               Gemini CLI context file
gemini-extension.json   Gemini CLI extension manifest
package.json            Pi Code package
.claude-plugin/         Claude Code manifest
.codex-plugin/          Codex CLI manifest
.opencode/              OpenCode JS plugin
.pi/                    Pi Code extension
assets/                 screenshots
CHANGELOG.md            version history
```

---

## Source

<https://github.com/adlptv/Agent-AND.git>