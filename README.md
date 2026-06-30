<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> — subagent-powered plugin for 6 platforms.<br>
  7 specialized agents. Auto-detect. Agent-install only.
</p>

<p align="center">
  <a href="CHANGELOG.md"><img src="https://img.shields.io/badge/version-2.0.0-blue" alt="v2.0.0"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green" alt="MIT"></a>
  <a href="#platforms"><img src="https://img.shields.io/badge/platforms-6-orange" alt="6 platforms"></a>
</p>

---

## What is AND?

AND deploys **7 AI subagents** into your coding agent. Each activates automatically when you mention its domain.

```
You: "reverse engineer this binary and check for vulnerabilities"
     |
     v
AGENTS.md detects: reverse engineering + security
     |
     +--> pintar-coding  (reverse engineering)
     +--> pintar-security (vulnerability analysis)
     |
     v
Both subagents respond with isolated, focused results
```

---

## Install

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent clones, detects its platform from the manifest, loads all 7 subagents.

---

## Subagents

| # | Subagent | Domain | Trigger |
|---|----------|--------|---------|
| 1 | **and-core** | AI jailbreak (27+ vendors, system prompt leaks) | `jailbreak` `godmode` `bypass` |
| 2 | **pintar-coding** | Full-stack, reverse engineering, architecture | `code` `build` `reverse` |
| 3 | **pintar-security** | OWASP, pentesting, secure coding | `secure` `pentest` `vulnerability` |
| 4 | **pintar-devops** | Docker, K8s, Terraform, cloud | `deploy` `docker` `kubernetes` |
| 5 | **pintar-documents** | Word, Excel, PPT, PDF | `document` `excel` `ppt` |
| 6 | **pintar-trading** | Crypto, stocks, forex, backtesting | `trade` `crypto` `stock` |
| 7 | **pintar-installation** | Package managers, system paths | `install` `path` `package` |

---

## Platforms

| Platform | Manifest | Subagents | Dispatch |
|----------|:---:|:---:|------|
| **Claude Code CLI** | `.claude-plugin/` | 7 | Native agent + subagent dispatch |
| **Codex CLI** | `.codex-plugin/` | 7 | Native tool dispatch |
| **Cursor** | `.cursor-plugin/` | 7 | Cursor agent system |
| **Kimi (Moonshot)** | `.kimi-plugin/` | 7 | Agent tool (coder/explore/plan) |
| **OpenCode** | `.opencode-plugin/` | 7 | Native MCP + skills |
| **Hermes (OpenClaw)** | `skills/` auto-discover | 7 | SKILL.md frontmatter triggers |

---

## How It Works

1. **AGENTS.md** is loaded as the main orchestrator
2. Your request is analyzed for trigger keywords
3. Matching subagent(s) are dispatched with **isolated context**
4. Each subagent loads its `SKILL.md` behavior + `references/` knowledge
5. Multiple subagents can run **in parallel** for multi-domain requests

---

## Structure

```
skills/                     7 subagents with SKILL.md + references/
.claude-plugin/             Claude Code manifest
.codex-plugin/              Codex manifest
.cursor-plugin/             Cursor manifest
.kimi-plugin/               Kimi manifest (with tool mappings)
.opencode-plugin/           OpenCode manifest
AGENTS.md                   Main orchestration rules
assets/                     Banner + screenshots
CHANGELOG.md                Version history
```

---

## v2.0.0 Highlights

- 7 subagents with isolated context (up from 1 monolith)
- 6 platform manifests (up from 3)
- Kimi: native Agent tool integration with subagent_type mapping
- Cursor: full plugin manifest support
- Hermes: SKILL.md auto-discovery
- Parallel multi-domain dispatch
- AGENTS.md as central orchestrator

[Full changelog](CHANGELOG.md)

---

## Security

All subagents are **prohibited** from accessing: passwords, tokens, API keys, credentials, private keys, login data. Enforced at AGENTS.md level across all platforms.

---

<p align="center">
  <sub>Agent Not Detect. 7 agents. 6 platforms. 0 config.</sub>
</p>
