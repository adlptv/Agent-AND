<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> &mdash; 7 agents. Install via your own agent.<br>
  No manual steps. No config files.
</p>

---

## Install

Tell your AI agent:

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent reads `AGENTS.md`, clones the repo, **detects its own platform and paths**, then installs all 7 agents to the correct local directory. No manual work. Restart, done.

### What your agent does

1. Clones this repo
2. Reads `AGENTS.md` for install instructions
3. Detects its platform (Claude Code / Codex / Cursor / OpenCode / Kimi / Hermes)
4. Finds the correct install path for that platform
5. Copies `skills/` to the right directory
6. Copies platform-specific config files
7. Reports "AND v2.0.1 installed. 7 agents ready."

---

## Agents

| # | Agent | What It Does |
|---|-------|-------------|
| 1 | **AI-RESEARCH** | AI vendor documentation, system configs (41 vendor files) |
| 2 | **AND CODING** | Full-stack development, reverse engineering |
| 3 | **AND SECURITY** | Security analysis, OWASP, pentesting |
| 4 | **AND DEVOPS** | Docker, Kubernetes, CI/CD, cloud |
| 5 | **AND DOCUMENTS** | Word, Excel, PowerPoint, PDF generation |
| 6 | **AND TRADING** | Crypto, stocks, forex, backtesting |
| 7 | **AND INSTALLATION** | Package managers, system paths |

---

## Platforms & Install Paths

| Platform | Skills Path | Config |
|----------|------------|--------|
| **Claude Code** | `~/.claude/and-skills/` | `~/.claude/CLAUDE.md` |
| **Codex CLI** | `~/.codex/and-skills/` | `~/.codex/AND.md` |
| **Cursor** | `~/.cursor/and-skills/` | `~/.cursor/AGENTS.md` |
| **OpenCode (Linux)** | `~/.config/opencode/and-skills/` | `~/.config/opencode/plugins/and.js` |
| **OpenCode (macOS)** | `~/Library/Application Support/opencode/and-skills/` | config dir |
| **OpenCode (Windows)** | `%APPDATA%/opencode/and-skills/` | config dir |
| **Kimi** | `skills/` (repo-relative) | `.kimi-plugin/plugin.json` |
| **Hermes (OpenClaw)** | `~/.openclaw-autoclaw/skills/` | Auto-discover |

---

## Repository

```
skills/                      7 agents (each with SKILL.md + references/)
  ai-research/               41 vendor reference files
  and-coding/                full-stack + reverse engineering refs
  and-security/              OWASP + pentesting refs
  and-devops/                Docker, K8s, cloud refs
  and-documents/             Word, Excel, PPT, PDF refs
  and-trading/               crypto, stocks, forex refs
  and-installation/          package managers + paths refs
AGENTS.md                    self-install guide for any agent
README.md                    this file
install.ps1 / install.sh     manual install scripts (fallback)
CHANGELOG.md                 version history
assets/                      screenshots
```

---

## Source

<https://github.com/adlptv/Agent-AND.git>

---

<p align="center">
  <sub>Agent Not Detect. 7 agents. 6 platforms. Tell your agent to install.</sub>
</p>