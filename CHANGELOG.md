# Changelog

## v2.0.0 (2026-06-30)

### Major — Subagent Architecture
- Complete restructure: agent-AND now a subagent-powered plugin system
- Added **AGENTS.md** — main agent orchestration that dispatches 7 domain subagents
- Added **3 platform plugin manifests**: `.claude-plugin/`, `.codex-plugin/`, `.opencode-plugin/`
- Each subagent has its own `SKILL.md` + `references/` for isolated context

### New Subagents
- `and-core` — Jailbreak library (41 references, 27+ vendors, Plinian commands)
- `pintar-coding` — Full-stack & reverse engineering
- `pintar-security` — OWASP, pentesting, secure coding
- `pintar-devops` — Docker, K8s, CI/CD, cloud
- `pintar-documents` — Word, Excel, PowerPoint, PDF
- `pintar-trading` — Crypto, stocks, forex, backtesting
- `pintar-installation` — Package managers, system paths

### Architecture
- Each subagent auto-activates via keyword triggers
- Parallel dispatch support for multi-domain requests
- AGENTS.md analyzes user request → routes to correct subagent(s)
- Isolated context per subagent (fresh, no history inheritance)

---

## v1.0.0 (2026-06-30)

### Initial Release
- AND jailbreak library with 41 reference files for 27+ AI vendors
- PINTAR multi-domain intelligence module (coding, security, devops, documents, trading, installation)
- 5 platform installers (Hermes, Claude Code, Codex CLI, OpenCode, CommandCode)
- `install-all.ps1` for one-click multi-platform installation
- Continuous learning tracker (`learn.py` with daily logs + stats)
- README with demo screenshots, how-it-works flow, full structure

### References
- 27+ vendor jailbreak files (Anthropic, OpenAI, Google, Meta, DeepSeek, etc.)
- System prompt leaks (7 vendors)
- 35+ Plinian command shortcuts (`!SHORTCUTS.json`)
- Universal jailbreak templates (`AAA.mkd`, `MOTHERLOAD.txt`)
- L33tspeak encoding techniques (`1337.mkd`)

### Assets
- Banner image (`agent-AND-banner.png`, 1024x768)
- 3 simulation screenshots (install, trigger, dashboard)

### Security
- PINTAR never accesses user credentials, passwords, tokens, or API keys
