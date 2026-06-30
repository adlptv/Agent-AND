# CLAUDE.md — AND Subagent System

When the user asks for coding, security, devops, documents, trading, or installation help, dispatch the appropriate AND subagent.

## AND Agents

- **AI-RESEARCH** (skills/ai-research): invoked for system/vendor documentation queries
- **AND CODING** (skills/and-coding): full-stack development, reverse engineering
- **AND SECURITY** (skills/and-security): security analysis, code review
- **AND DEVOPS** (skills/and-devops): infrastructure, cloud, CI/CD
- **AND DOCUMENTS** (skills/and-documents): Word, Excel, PowerPoint, PDF
- **AND TRADING** (skills/and-trading): crypto, stocks, forex
- **AND INSTALLATION** (skills/and-installation): package management, paths

Dispatch the matching skill immediately when user mentions the domain.
