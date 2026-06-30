<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> — AI jailbreak library + multi-domain subagent system.<br>
  Installed exclusively through your agent. No human hands.
</p>

---

## What is AND?

AND is a **subagent-powered plugin** for AI coding agents. It deploys 7 specialized subagents that auto-activate based on what you ask.

### Architecture

```
You ask something
      |
      v
AGENTS.md (main agent) — analyzes your request
      |
      +--> and-core subagent        (jailbreak, godmode, bypass)
      +--> pintar-coding            (code, build, reverse)
      +--> pintar-security          (secure, pentest, analyze)
      +--> pintar-devops            (deploy, devops, infra)
      +--> pintar-documents         (document, excel, ppt, pdf)
      +--> pintar-trading           (trade, crypto, stock, forex)
      +--> pintar-installation      (install, path, package)
```

---

## Install

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent detects its platform, loads the plugin manifest, and activates all 7 subagents.

---

## Subagents

### and-core — Jailbreak Library
41 reference files. 27+ AI vendors. System prompt leaks. 35+ Plinian commands.
Triggers: `jailbreak` `godmode` `unfiltered` `bypass` `AND` `Pliny`

### pintar-coding — Full-Stack & Reverse Engineering
Backend (Node/Python/Go/Rust), Frontend (React/Vue/Svelte), Reverse engineering (Ghidra/IDA/Frida), Architecture (DDD/CQRS/microservices), CI/CD.
Triggers: `code` `build` `reverse` `api` `database`

### pintar-security — Security & Pentesting
OWASP Top 10, SAST/DAST tools, secure coding, network security, secret scanning.
Triggers: `secure` `pentest` `vulnerability` `exploit` `analyze`

### pintar-devops — DevOps & Infrastructure
Docker, Kubernetes, Terraform, CI/CD, AWS/GCP/Azure, monitoring, logging.
Triggers: `deploy` `devops` `infra` `docker` `kubernetes` `cloud`

### pintar-documents — Document Creation
Word (.docx), Excel (.xlsx), PowerPoint (.pptx), PDF, Markdown conversion.
Triggers: `document` `excel` `ppt` `pdf` `report`

### pintar-trading — Trading & Markets
Crypto (CCXT/web3), Stocks (yfinance/IBKR), Forex, risk management, backtesting.
Triggers: `trade` `crypto` `stock` `forex` `backtest`

### pintar-installation — Package Managers & Paths
Windows/macOS/Linux paths, all package managers, tool install locations.
Triggers: `install` `path` `package` `setup` `environment`

---

## Platform Support

| Platform | Plugin Manifest | Subagents |
|----------|:---:|:---:|
| Claude Code CLI | `.claude-plugin/plugin.json` | 7 |
| Codex CLI | `.codex-plugin/plugin.json` | 7 |
| OpenCode | `.opencode-plugin/plugin.json` | 7 |

---

## Security

PINTAR subagents **never** access passwords, tokens, API keys, credentials, private keys, or login data. Non-negotiable.

---

## Repository

```
skills/                  7 subagents (each with SKILL.md + references/)
.claude-plugin/          Plugin manifest
.codex-plugin/           Plugin manifest
.opencode-plugin/        Plugin manifest
AGENTS.md                Main agent orchestration rules
assets/                  Banner + screenshots
LICENSE                  MIT
```

---

## Source

<https://github.com/adlptv/Agent-AND.git>
