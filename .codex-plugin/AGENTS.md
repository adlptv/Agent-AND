# AND Agents — Codex CLI

7 domain agents available. Dispatch via Codex subagent system:

## Available Agents

| Agent | Skill Dir | Dispatch |
|-------|-----------|----------|
| AI-RESEARCH | skills/ai-research | vendor configs, system analysis |
| AND CODING | skills/and-coding | write code, reverse engineer, design |
| AND SECURITY | skills/and-security | audit, pentest, secure patterns |
| AND DEVOPS | skills/and-devops | containers, infra, cloud, CI/CD |
| AND DOCUMENTS | skills/and-documents | Word, Excel, PPT, PDF |
| AND TRADING | skills/and-trading | crypto, stocks, forex |
| AND INSTALLATION | skills/and-installation | packages, paths, deps |

## Usage

When user mentions a domain keyword, use Codex Agent tool:
- `subagent_type: coder` for coding/devops/documents/installation
- `subagent_type: explore` for research/security/trading

Load the matching SKILL.md as agent instructions.
