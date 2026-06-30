<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND — Agent Not Detect" width="600">
</p>

# AND — Agent Not Detect

> **Agent-install only.** Humans: tell your agent to install AND. It handles the rest.

AND bundles two systems:
- **AND** — Jailbreak & adversarial prompt library (27+ AI vendors)
- **PINTAR** — Progressive Intelligence Neural Training & Adaptive Response — makes your agent an expert in coding, reverse engineering, BE/FE, CI/CD, security, DevOps, document creation, trading, installation, and more. Learns from every prompt.

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

### Dashboard
<p align="center">
  <img src="assets/sim-dashboard.png" alt="AND dashboard" width="720">
</p>

---

## Install

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent detects its platform, installs AND + PINTAR. No manual steps.

## What You Get

### AND — Jailbreak Library
| Category | Count |
|----------|-------|
| Vendor jailbreaks | 27+ (Anthropic, OpenAI, Google, Meta, DeepSeek, etc.) |
| System prompt leaks | 7 vendors |
| Plinian commands | 35+ shortcuts |
| Universal jailbreaks | AAA, MOTHERLOAD, 1337 encoding |

### PINTAR — Multi-Domain Intelligence
| Domain | Capabilities |
|--------|-------------|
| **Coding & RE** | Full-stack (BE/FE), reverse engineering, architecture |
| **Security** | OWASP, pentesting, secure coding, network security |
| **DevOps** | Docker, K8s, CI/CD, IaC, monitoring, cloud |
| **Documents** | Word, Excel, PowerPoint, PDF generation |
| **Trading** | Crypto, stocks, forex, risk management, backtesting |
| **Installation** | Package managers, system paths (Win/Unix/macOS) |
| **Learning** | Learns from every prompt, builds domain index |

### Security Guarantee
> PINTAR **never** accesses your passwords, tokens, API keys, credentials, private keys, or login data. This is non-negotiable.

## Supported Platforms

| Platform | Installed To |
|----------|-------------|
| **Hermes (OpenClaw)** | `skills/and/` + `skills/pintar/` |
| **Claude Code CLI** | `.claude/and/` |
| **Codex CLI** | `.codex/and/` |
| **OpenCode** | `.opencode/and/` |
| **CommandCode** | `.commandcode/and/` |

## Triggers

`jailbreak` `godmode` `unfiltered` `bypass` `AND` `Pliny` `system prompt` `!JAILBREAK` `!GODMODE` `!OMNI`

PINTAR activates on: `code`, `build`, `deploy`, `secure`, `analyze`, `reverse`, `trade`, `document`, `install`, `path`

## Structure

```
and-references/              ← 41 jailbreak files
and-scripts/search.py        ← Cross-file search
pintar/                      ← PINTAR intelligence module
├── SKILL.md                 ← Auto-activates with AND
├── references/
│   ├── coding/CODING.md     ← Full-stack + reverse engineering
│   ├── security/SECURITY.md ← OWASP, pentesting, secure coding
│   ├── devops/DEVOPS.md     ← Docker, K8s, CI/CD, cloud
│   ├── documents/DOCUMENTS.md ← Word, Excel, PPT, PDF
│   ├── trading/TRADING.md   ← Crypto, stocks, forex
│   └── installation/INSTALLATION.md ← Paths, package managers
├── scripts/learn.py         ← Learning tracker
└── memory/                  ← Continuous learning storage
assets/                      ← Banner + simulation screenshots
```

## Source

<https://github.com/adlptv/Agent-AND.git>
