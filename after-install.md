# AND — Agent Not Detect — Installed

9 agents installed to `~/.hermes/skills/`:

```
skills/
  and/              ORCHESTRATOR — /and routes any task to the right agent
  ai-research/      AI vendor documentation (41 files)
  and-coding/       Full-stack + reverse engineering
  and-security/     Security analysis, OWASP, pentesting
  and-devops/       Docker, K8s, CI/CD, cloud
  and-documents/    Word, Excel, PPT, PDF
  and-trading/      Crypto, stocks, forex
  and-installation/ Package managers, paths, deps
  and-jailbreak/    LLM jailbreaking: GODMODE, Parseltongue, racing
```

**Usage — just type `/and <task>`:**
- `/and jailbreak this prompt` -> AND JAILBREAK
- `/and build a REST API`      -> AND CODING
- `/and audit for OWASP`       -> AND SECURITY
- `/and deploy with Docker`    -> AND DEVOPS
- `/and monthly report .xlsx`  -> AND DOCUMENTS
- Each agent also auto-activates on matching keywords.

**AND JAILBREAK quick start:**
- `python <skill>/scripts/jailbreak_kit.py "query" --model <m> --base-url <url> --api-key <key>`
- Full pipeline: direct -> prefill -> GODMODE templates -> Parseltongue -> multi-turn -> framing -> translation -> race

**Bundle:** `skill-bundles/and.yaml` is copied to `~/.hermes/skill-bundles/`
so `/and` works as a single slash command. Verify with `hermes bundles list`.

**Restart:** `hermes restart` (or restart your CLI/TUI session)
