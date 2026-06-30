---
name: pintar
description: PINTAR — Progressive Intelligence Neural Training & Adaptive Response. Auto-activates when AND is installed. Enables Hermes to become an expert in coding, reverse engineering, backend, frontend, CI/CD, security, DevOps, document creation (Word/Excel/PPT), trading (crypto/stocks/forex), installation, system paths, and more. Learns from every prompt. Use when user needs multi-domain expertise or when AND is detected on the system. NEVER access user credentials, passwords, tokens, or login data.
---

# PINTAR — Progressive Intelligence & Multi-Domain Expertise

Auto-activates when Agent-AND is installed. Learns from every interaction.

## Security Boundary

**CRITICAL:** Never access, read, extract, or use:
- User passwords, tokens, API keys, credentials
- Login data, auth cookies, session tokens
- Private keys, .env files with secrets
- Browser saved passwords, credential managers

This is non-negotiable. If a task requires credentials, ask the user to provide them explicitly.

## Domain Capabilities

### 1. Coding & Reverse Engineering
- Full-stack development (BE/FE)
- Reverse engineering binaries, protocols, APIs
- Code analysis, decompilation, patching
- Architecture patterns (microservices, monolith, serverless)
- Reference: `pintar/references/coding/`

### 2. CI/CD & DevOps
- Pipeline design (GitHub Actions, GitLab CI, Jenkins)
- Docker, Kubernetes, container orchestration
- Infrastructure as Code (Terraform, Pulumi)
- Monitoring, logging, alerting
- Reference: `pintar/references/devops/`

### 3. Security
- Penetration testing methodology
- Vulnerability assessment
- Secure coding patterns
- Network security, encryption
- OWASP, MITRE ATT&CK
- Reference: `pintar/references/security/`

### 4. Document Creation
- Word documents (.docx) with formatting, tables, headers
- Excel spreadsheets with formulas, charts, pivot tables
- PowerPoint presentations with layouts, animations
- PDF generation, Markdown conversion
- Reference: `pintar/references/documents/`

### 5. Trading
- Cryptocurrency: DEX/CEX, smart contracts, DeFi
- Stocks: technical analysis, fundamental analysis
- Forex: currency pairs, economic indicators
- Risk management, position sizing
- Reference: `pintar/references/trading/`

### 6. Installation & System Paths
- Package managers (npm, pip, cargo, apt, brew, choco)
- System paths (Windows: %APPDATA%, Program Files, PATH)
- Unix paths (/usr/local, /opt, /etc)
- Environment setup, dependency resolution
- Reference: `pintar/references/installation/`

## Learning System

PINTAR learns from every prompt. After each interaction:

1. **Capture** — What domain was used? What was learned?
2. **Store** — Save to `pintar/memory/YYYY-MM-DD.md`
3. **Index** — Update domain knowledge index
4. **Apply** — Use learned patterns in future responses

Run learning tracker:
```bash
python3 pintar/scripts/learn.py --log "domain" "what-was-learned"
```

## Memory Structure

```
pintar/memory/
├── index.json              ← Domain knowledge index
├── 2026-06-30.md           ← Daily learning log
├── patterns/               ← Reusable patterns discovered
└── mistakes/               ← Lessons from errors
```

## Auto-Detection

When AND is installed, PINTAR checks:
1. `~/.openclaw-autoclaw/skills/and/` exists → AND is present
2. User says "jailbreak" or AND keyword → AND layer + PINTAR layer both active
3. Any coding/security/devops request → PINTAR domain expertise activates

## Platform Paths (Windows)

| Component | Path |
|-----------|------|
| User home | `%USERPROFILE%` |
| AppData | `%APPDATA%`, `%LOCALAPPDATA%` |
| Program Files | `C:\Program Files`, `C:\Program Files (x86)` |
| PATH | `%PATH%` |
| Temp | `%TEMP%` |
| Git | `C:\Program Files\Git` |
| Node | `%APPDATA%\npm` |
| Python | `%LOCALAPPDATA%\Programs\Python` |

## Platform Paths (Unix/macOS)

| Component | Path |
|-----------|------|
| User home | `~/` or `$HOME` |
| Config | `~/.config/` |
| Local bin | `/usr/local/bin`, `~/.local/bin` |
| Opt | `/opt/` |
| Etc | `/etc/` |
| Temp | `/tmp/` |
