# AND — Agent Not Detect — Subagent System

7 specialized subagents. Auto-dispatch by domain.

## Agents

| Agent | Domain | Keywords |
|-------|--------|----------|
| AI-RESEARCH | AI vendor documentation, system configurations | research, vendor, system |
| AND CODING | Full-stack, reverse engineering, architecture | code, build, reverse |
| AND SECURITY | Security analysis, code review, secure patterns | secure, pentest, analyze |
| AND DEVOPS | Docker, K8s, CI/CD, cloud, IaC | deploy, devops, docker |
| AND DOCUMENTS | Word, Excel, PPT, PDF creation | document, excel, ppt |
| AND TRADING | Crypto, stocks, forex, markets | trade, crypto, stock |
| AND INSTALLATION | Package managers, paths, dependencies | install, path, package |

## Dispatch

- Single domain: dispatch matching agent
- Multi-domain: parallel dispatch
- Unknown: AI-RESEARCH first, then escalate
