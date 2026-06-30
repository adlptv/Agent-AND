<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> — 7 specialized subagents for 6 platforms.<br>
  Auto-detect by keyword. Clone once, install everywhere.
</p>

<p align="center">
  <a href="CHANGELOG.md"><img src="https://img.shields.io/badge/version-2.0.1-blue" alt="v2.0.1"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green" alt="MIT"></a>
  <a href="#platforms"><img src="https://img.shields.io/badge/platforms-6-orange" alt="6 platforms"></a>
</p>

---

## Install

```bash
git clone https://github.com/adlptv/Agent-AND.git
cd Agent-AND

# Windows
powershell -ExecutionPolicy Bypass -File install.ps1

# macOS / Linux
bash install.sh
```

The installer detects which platforms you have and copies skills + configs to the correct local directories.

---

## Agents

| # | Agent | Handles |
|---|-------|---------|
| 1 | **AI-RESEARCH** | AI vendor docs, system configs |
| 2 | **AND CODING** | Full-stack, reverse engineering |
| 3 | **AND SECURITY** | Security review, pentesting |
| 4 | **AND DEVOPS** | Docker, K8s, CI/CD, cloud |
| 5 | **AND DOCUMENTS** | Word, Excel, PPT, PDF |
| 6 | **AND TRADING** | Crypto, stocks, forex |
| 7 | **AND INSTALLATION** | Packages, paths, dependencies |

---

## Platforms

| Platform | Install Path | How Agents Appear |
|----------|-------------|-------------------|
| **Claude Code** | `~/.claude/and-skills/` + CLAUDE.md | `/skills` command |
| **Codex CLI** | `~/.codex/and-skills/` + AND.md | Agent tool dispatch |
| **Cursor** | `~/.cursor/and-skills/` | Plugin skills panel |
| **OpenCode** | `~/.opencode/and-skills/` + plugin | Skills dropdown |
| **Kimi** | `.kimi-plugin/` manifest | Agent tool |
| **Hermes** | `~/.openclaw-autoclaw/skills/` | Auto-discover |

---

## How It Works

1. **Clone** the repo
2. **Run** `install.ps1` or `install.sh`
3. Skills copied to each platform's local directory
4. Platform configs updated to reference AND agents
5. **Restart** your agent
6. Agents now selectable via each platform's native agent/skill selector

---

## Why Agents Weren't Selectable Before

Plugin manifests in a remote repo don't auto-register agents. Each platform needs:

- **Skills physically on disk** in the platform's local directory
- **Config files** pointing to those skills
- **Restart** to reload

The install script handles all three.

---

<p align="center">
  <sub>Agent Not Detect. 7 agents. 6 platforms. 1 install script.</sub>
</p>