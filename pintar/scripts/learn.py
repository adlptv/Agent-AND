"""PINTAR Learning Tracker - logs what Hermes learns from each prompt."""
import os, json, sys
from datetime import datetime

SKILL_DIR = os.path.dirname(os.path.abspath(__file__))
MEMORY_DIR = os.path.join(SKILL_DIR, "memory")
INDEX_FILE = os.path.join(MEMORY_DIR, "index.json")
DOMAINS = ["coding", "security", "devops", "documents", "trading", "installation", "general"]

def ensure_dirs():
    os.makedirs(MEMORY_DIR, exist_ok=True)
    os.makedirs(os.path.join(MEMORY_DIR, "patterns"), exist_ok=True)
    os.makedirs(os.path.join(MEMORY_DIR, "mistakes"), exist_ok=True)
    if not os.path.exists(INDEX_FILE):
        with open(INDEX_FILE, "w", encoding="utf-8") as f:
            json.dump({"total_learnings": 0, "domains": {d: 0 for d in DOMAINS}, "patterns": [], "recent": []}, f, indent=2)

def log_learning(domain, summary):
    ensure_dirs()
    today = datetime.now().strftime("%Y-%m-%d")
    timestamp = datetime.now().strftime("%H:%M:%S")
    domain = domain.lower()
    if domain not in DOMAINS:
        domain = "general"

    daily_file = os.path.join(MEMORY_DIR, f"{today}.md")
    entry = f"- [{timestamp}] **{domain}**: {summary}\n"
    with open(daily_file, "a", encoding="utf-8") as f:
        if os.path.getsize(daily_file) == 0:
            f.write(f"# PINTAR Learning Log - {today}\n\n")
        f.write(entry)

    with open(INDEX_FILE, "r", encoding="utf-8") as f:
        idx = json.load(f)
    idx["total_learnings"] += 1
    if domain in idx["domains"]:
        idx["domains"][domain] += 1
    idx["recent"].insert(0, {"date": today, "time": timestamp, "domain": domain, "summary": summary})
    idx["recent"] = idx["recent"][:50]
    with open(INDEX_FILE, "w", encoding="utf-8") as f:
        json.dump(idx, f, indent=2)
    print(f"  [OK] [{domain}] {summary}")

def show_stats():
    ensure_dirs()
    with open(INDEX_FILE, "r", encoding="utf-8") as f:
        idx = json.load(f)
    print(f"\n=== PINTAR Learning Stats ===")
    print(f"  Total learnings: {idx['total_learnings']}")
    print(f"  By domain:")
    for domain, count in sorted(idx["domains"].items(), key=lambda x: -x[1]):
        bar = "=" * min(count, 30)
        print(f"    {domain:15s} {count:4d} {bar}")
    print(f"\n  Recent learnings:")
    for entry in idx.get("recent", [])[:5]:
        print(f"    [{entry['date']} {entry['time']}] {entry['domain']}: {entry['summary']}")

def show_today():
    ensure_dirs()
    today = datetime.now().strftime("%Y-%m-%d")
    daily_file = os.path.join(MEMORY_DIR, f"{today}.md")
    if os.path.exists(daily_file):
        with open(daily_file, "r", encoding="utf-8") as f:
            print(f.read())
    else:
        print(f"No learnings recorded for {today}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("PINTAR Learning Tracker")
        print("  --log <domain> <summary>   Log a learning")
        print("  --stats                    Show stats")
        print("  --today                    Show today's log")
        print(f"  Domains: {', '.join(DOMAINS)}")
        sys.exit(0)
    cmd = sys.argv[1]
    if cmd == "--log" and len(sys.argv) >= 4:
        log_learning(sys.argv[2], " ".join(sys.argv[3:]))
    elif cmd == "--stats":
        show_stats()
    elif cmd == "--today":
        show_today()
    else:
        print("Unknown command. Use --log, --stats, or --today")
