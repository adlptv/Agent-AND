"""
AND Search — search across all reference files for keywords.
Usage: python search.py <query> [--vendor <name>]
"""
import os
import json
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
SKILL_DIR = os.path.dirname(SCRIPT_DIR)
REF_DIR = os.path.join(SKILL_DIR, "and-references")
if not os.path.exists(REF_DIR):
    REF_DIR = os.path.join(SKILL_DIR, "references")

def search_shortcuts(query: str) -> list:
    """Search SHORTCUTS.json for matching commands."""
    path = os.path.join(REF_DIR, "!SHORTCUTS.json")
    if not os.path.exists(path):
        return []
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)
    results = []
    q = query.lower()
    for cmd in data.get("commands", []):
        if q in cmd["name"].lower() or q in cmd["definition"].lower() or q in cmd.get("category", "").lower():
            results.append(f"  [{cmd['name']}] ({cmd.get('category', '')}) — {cmd['definition']}")
    return results

def search_files(query: str, vendor_filter: str = None) -> list:
    """Search .mkd/.md/.txt files for query."""
    results = []
    q = query.lower()
    for fname in sorted(os.listdir(REF_DIR)):
        if vendor_filter and vendor_filter.lower() not in fname.lower():
            continue
        if not any(fname.endswith(ext) for ext in (".mkd", ".md", ".txt", ".json")):
            continue
        path = os.path.join(REF_DIR, fname)
        try:
            with open(path, "r", encoding="utf-8", errors="replace") as f:
                content = f.read()
        except Exception:
            continue
        if q in content.lower():
            lines = content.split("\n")
            for i, line in enumerate(lines):
                if q in line.lower():
                    start = max(0, i - 2)
                    end = min(len(lines), i + 4)
                    snippet = "\n".join(lines[start:end])
                    results.append(f"  [{fname}:{i+1}]\n{snippet}\n")
                    if len(results) >= 10:
                        break
            if len(results) >= 10:
                break
    return results

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("AND Search — Usage: python search.py <query> [--vendor <name>] [--list-vendors]")
        sys.exit(1)

    if sys.argv[1] == "--list-vendors":
        vendors = sorted(set(
            f.replace(".mkd", "").replace(".md", "").replace(".txt", "")
            for f in os.listdir(REF_DIR)
            if any(f.endswith(ext) for ext in (".mkd", ".md", ".txt")) and not f.startswith(("!", "#", "-", "1"))
        ))
        print("\n".join(vendors))
        sys.exit(0)

    query = sys.argv[1]
    vendor = None
    if len(sys.argv) > 3 and sys.argv[2] == "--vendor":
        vendor = sys.argv[3]

    print(f"=== AND Search: '{query}' ===\n")

    shortcut_results = search_shortcuts(query)
    if shortcut_results:
        print("## SHORTCUTS Matches:")
        for r in shortcut_results:
            print(r)
        print()

    vendor_results = search_files(query, vendor)
    if vendor_results:
        print("## Vendor File Matches:")
        for r in vendor_results:
            print(r)
    else:
        print("No matches found.")
