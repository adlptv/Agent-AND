<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> — multi-domain development plugin for 6 platforms.<br>
  7 specialized subagents. Auto-detect. Install once, use everywhere.
</p>

<p align="center">
  <a href="CHANGELOG.md"><img src="https://img.shields.io/badge/version-2.0.0-blue" alt="v2.0.0"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green" alt="MIT"></a>
  <a href="#platforms"><img src="https://img.shields.io/badge/platforms-6-orange" alt="6 platforms"></a>
</p>

---

## What is AND?

AND is a **subagent-powered development plugin** that deploys 7 specialized subagents into your AI coding tool. Each subagent activates automatically based on what you're working on.

```
You: "analyze this project's dependencies and generate a report"
     |
     v
AGENTS.md detects: code analysis + document generation
     |
     +--> pintar-coding  (code analysis)
     +--> pintar-documents (report generation)
     |
     v
Both subagents deliver results simultaneously
```

---

## Install

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent detects its platform from the manifest and loads all subagents.

---

## Subagents

| # | Subagent | Handles | When you say |
|---|----------|---------|-------------|
| 1 | **ai-research** | AI vendor documentation, system configurations, technical reference | `research` `vendor` `system` |
| 2 | **pintar-coding** | Full-stack development, reverse engineering, architecture | `code` `build` `reverse` |
| 3 | **pintar-security** | Security analysis, code review, secure patterns | `secure` `pentest` `vulnerability` |
| 4 | **pintar-devops** | Docker, Kubernetes, CI/CD, cloud infrastructure | `deploy` `docker` `kubernetes` |
| 5 | **pintar-documents** | Word, Excel, PowerPoint, PDF generation | `document` `excel` `ppt` |
| 6 | **pintar-trading** | Crypto, stocks, forex, market data, backtesting | `trade` `crypto` `stock` |
| 7 | **pintar-installation** | Package managers, dependency resolution, system paths | `install` `path` `package` |

---

## Platforms

| Platform | Manifest | Subagents |
|----------|:---:|:---:|
| **Claude Code CLI** | `.claude-plugin/` | 7 |
| **Codex CLI** | `.codex-plugin/` | 7 |
| **Cursor** | `.cursor-plugin/` | 7 |
| **Kimi (Moonshot)** | `.kimi-plugin/` | 7 |
| **OpenCode** | `.opencode-plugin/` | 7 |
| **Hermes (OpenClaw)** | `skills/` auto-discover | 7 |

---

## How It Works

1. **AGENTS.md** orchestrates — analyzes your request for context
2. Matching subagent(s) dispatched with **isolated context**
3. Each subagent loads its `SKILL.md` + domain `references/`
4. Multiple subagents run **in parallel** for multi-domain work

---

## Repository

```
skills/                      7 subagents (each with SKILL.md + references/)
.platform-manifests/         Plugin manifests for 5+ platforms
AGENTS.md                    Orchestration rules
assets/                      Banner + screenshots
```

---

## v2.0.0

- 7 subagents with isolated context and domain references
- 6 platform manifests with native tool mappings
- AGENTS.md orchestration with parallel dispatch
- Clean architecture — each subagent is self-contained

[Full changelog](CHANGELOG.md)

---

## Security

All subagents respect system boundaries. No credential access. No data exfiltration.

---

<p align="center">
  <sub>Agent Not Detect. 7 agents. 6 platforms. 0 config.</sub>
</p>
