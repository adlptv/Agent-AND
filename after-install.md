# AND — Agent Not Detect — Installed

8 agents installed to `~/.hermes/skills/`:

```
skills/
  ai-research/      AI vendor documentation (41 files)
  and-coding/       Full-stack + reverse engineering
  and-security/     Security analysis, OWASP, pentesting
  and-devops/       Docker, K8s, CI/CD, cloud
  and-documents/    Word, Excel, PPT, PDF
  and-trading/      Crypto, stocks, forex
  and-installation/ Package managers, paths, deps
  and-jailbreak/    LLM jailbreaking: GODMODE, Parseltongue, racing
```

**Usage:**
- `/skills and:ai-research` for vendor research
- `/skills and:and-jailbreak` for jailbreaking queries (or let it auto-activate on matching keywords)
- Each agent auto-activates on matching keywords
- See each agent's SKILL.md for triggers

**AND JAILBREAK quick start:**
- `python <skill>/scripts/jailbreak_kit.py "query" --model <m> --base-url <url> --api-key <key>`
- Full pipeline: direct → prefill → GODMODE templates → Parseltongue → multi-turn → framing → translation → race

**Restart:** `hermes restart` (or restart your CLI/TUI session)
