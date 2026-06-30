<p align="center">
  <img src="assets/agent-AND-banner.png" alt="AND" width="600">
</p>

<p align="center">
  <strong>Agent Not Detect</strong> — multi-domain development plugin for 6 platforms.<br>
  7 specialized agents. Auto-detect by keyword. Install once.
</p>

<p align="center">
  <a href="CHANGELOG.md"><img src="https://img.shields.io/badge/version-2.0.1-blue" alt="v2.0.1"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green" alt="MIT"></a>
  <a href="#platforms"><img src="https://img.shields.io/badge/platforms-6-orange" alt="6 platforms"></a>
</p>

---

## Install

```
Install AND from github.com/adlptv/Agent-AND.git
```

Your agent detects its platform and loads all 7 subagents automatically.

---

## Agents

| # | Agent | Handles | When you say |
|---|-------|---------|-------------|
| 1 | **AI-RESEARCH** | AI vendor docs, system configs | `research` `vendor` `system` |
| 2 | **AND CODING** | Full-stack, reverse engineering | `code` `build` `reverse` |
| 3 | **AND SECURITY** | Security review, pentesting | `secure` `pentest` `analyze` |
| 4 | **AND DEVOPS** | Docker, K8s, CI/CD, cloud | `deploy` `docker` `kubernetes` |
| 5 | **AND DOCUMENTS** | Word, Excel, PPT, PDF | `document` `excel` `ppt` |
| 6 | **AND TRADING** | Crypto, stocks, forex | `trade` `crypto` `stock` |
| 7 | **AND INSTALLATION** | Packages, paths, dependencies | `install` `path` `package` |

---

## Platforms

| Platform | Integration | Agents |
|----------|------------|:---:|
| **Claude Code CLI** | `.claude-plugin/` + CLAUDE.md | 7 |
| **Codex CLI** | `.codex-plugin/` + AGENTS.md | 7 |
| **Cursor** | `.cursor-plugin/` + AGENTS.md | 7 |
| **Kimi (Moonshot)** | `.kimi-plugin/` + native tool mappings | 7 |
| **OpenCode** | `.opencode/CODEBUDDY.md` | 7 |
| **Hermes (OpenClaw)** | `skills/` auto-discover | 7 |

---

## How It Works

```
You: "build a Dockerfile and check it for vulnerabilities"
     |
     v
AGENTS.md detects: devops + security
     |
     +--> AND DEVOPS  (Dockerfile creation)
     +--> AND SECURITY (vulnerability check)
     |
     v
Both agents deliver results in parallel
```

---

## Repository

```
skills/                      7 subagents
  ai-research/               AI vendor documentation
  and-coding/                full-stack + reverse engineering
  and-security/              security analysis
  and-devops/                infrastructure + cloud
  and-documents/             document generation
  and-trading/               market analysis
  and-installation/          package + path management
AGENTS.md                    orchestration rules
platform manifests/          5 platform configs
assets/                      screenshots
```

---

## Security

All agents respect system boundaries. No credential access. No data exfiltration.

---

<p align="center">
  <sub>Agent Not Detect. 7 agents. 6 platforms. 0 config.</sub>
</p>