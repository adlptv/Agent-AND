<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> — subagent-powered plugin.<br>
  7 specialized agents. Auto-detect. Agent-install only.
</p>

<p align="center">
  <a href="CHANGELOG.md"><img src="https://img.shields.io/badge/version-2.0.0-blue" alt="v2.0.0"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green" alt="MIT"></a>
</p>

---

## What is AND?

AND is a plugin that deploys **7 AI subagents** into your coding agent. Each subagent activates automatically when you mention its domain — no config, no manual trigger.

```
You: "analyze this binary for vulnerabilities"
     |
     v
AGENTS.md — identifies: reverse engineering + security
     |
     +--> pintar-coding  (reverse engineering)
     +--> pintar-security (vulnerability analysis)
     |
     v
Both subagents respond with isolated, focused, expert results
```

---

## Install

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent clones the repo, loads the plugin manifest, and deploys all 7 subagents. Done.

---

## Subagents

| # | Subagent | Specializes In | Trigger Words |
|---|----------|---------------|---------------|
| 1 | **and-core** | AI jailbreak (27+ vendors), system prompt leaks, Plinian commands | `jailbreak` `godmode` `bypass` `Pliny` |
| 2 | **pintar-coding** | Full-stack, reverse engineering, architecture, CI/CD | `code` `build` `reverse` `api` |
| 3 | **pintar-security** | OWASP, pentesting, secure coding, network security | `secure` `pentest` `vulnerability` |
| 4 | **pintar-devops** | Docker, Kubernetes, Terraform, cloud (AWS/GCP/Azure) | `deploy` `docker` `kubernetes` `cloud` |
| 5 | **pintar-documents** | Word, Excel, PowerPoint, PDF generation | `document` `excel` `ppt` `pdf` |
| 6 | **pintar-trading** | Crypto, stocks, forex, backtesting, risk management | `trade` `crypto` `stock` `forex` |
| 7 | **pintar-installation** | Package managers, system paths (Win/Mac/Linux) | `install` `path` `package` |

---

## How Subagents Work

Each subagent is a self-contained skill with:

- **`SKILL.md`** — YAML frontmatter triggers + behavior rules
- **`references/`** — Domain knowledge loaded on-demand (not pre-loaded into context)

The main `AGENTS.md` orchestrates:
1. Analyzes your request for trigger keywords
2. Dispatches 1 subagent (single-domain) or multiple (parallel for multi-domain)
3. Subagents run in **isolated context** — they don't inherit history, only get exactly what they need

---

## Platforms

| Platform | Support | Manifest |
|----------|:---:|------|
| Claude Code CLI | ✅ | `.claude-plugin/plugin.json` |
| Codex CLI | ✅ | `.codex-plugin/plugin.json` |
| OpenCode | ✅ | `.opencode-plugin/plugin.json` |

---

## Repository

```
skills/                     7 subagents
  and-core/                 41 jailbreak references (27+ vendors)
  pintar-coding/            full-stack + reverse engineering refs
  pintar-security/          OWASP + pentesting refs
  pintar-devops/            Docker/K8s/cloud refs
  pintar-documents/         Word/Excel/PPT/PDF refs
  pintar-trading/           crypto/stocks/forex refs
  pintar-installation/      paths + package managers refs
.claude-plugin/             platform manifest
.codex-plugin/
.opencode-plugin/
AGENTS.md                   main orchestration
assets/                     screenshots
CHANGELOG.md                version history
```

---

## v2.0.0 — What's New

Complete restructure from monolith to subagent architecture:

- **AGENTS.md** dispatcher replaces old flat skill system
- **7 subagents** with isolated context, each has SKILL.md + references
- **Platform plugin manifests** for Claude Code, Codex, OpenCode
- **Parallel dispatch** — multi-domain requests spawn multiple subagents simultaneously
- Old installer scripts removed — agent now auto-detects platform from manifest

[Full changelog](CHANGELOG.md)

---

## Security

All PINTAR subagents are **prohibited** from accessing: passwords, tokens, API keys, credentials, private keys, login data. Non-negotiable. Enforced at AGENTS.md level.

---

<p align="center">
  <sub>Agent Not Detect. Built by agents, for agents.</sub>
</p>
