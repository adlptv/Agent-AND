"""
Loader for GODMODE scripts. Handles the exec-scoping issues.

Location-agnostic: resolves the scripts dir relative to this file's own
location, so it works both inside the AND repo (skills/and-jailbreak/scripts)
and inside a Hermes install (skills/godmode/scripts).

Usage in execute_code:
    exec(open(os.path.expanduser(
        os.path.join(os.environ.get("HERMES_HOME", os.path.expanduser("~/.hermes")), "skills/red-teaming/godmode/scripts/load_godmode.py")
    )).read())

    # Now all functions are available:
    # - auto_jailbreak(), undo_jailbreak()
    # - race_models(), race_godmode_classic()
    # - generate_variants(), obfuscate_query(), detect_triggers()
    # - score_response(), is_refusal(), count_hedges()
    # - escalate_encoding()
    # - jailbreak_pipeline() and friends (if jailbreak_kit.py is present)
"""

import os, sys
from pathlib import Path

def _gm_resolve_scripts_dir():
    # 0) Explicit override — point at any install (AND repo or Hermes skill)
    env_dir = os.getenv("AND_JB_DIR")
    if env_dir:
        d = Path(env_dir)
        if (d / "parseltongue.py").exists():
            return d
        if (d / "scripts" / "parseltongue.py").exists():
            return d / "scripts"
    # 1) This loader's own directory (AND repo / Hermes skill dir)
    try:
        own = Path(__file__).resolve().parent
        if (own / "parseltongue.py").exists():
            return own
    except NameError:
        pass
    # 2) Current working directory — covers running from the skill dir or
    #    repo root without __file__ (typical execute_code flow)
    cwd = Path(os.getcwd())
    for c in [cwd, cwd / "scripts", cwd / "skills" / "and-jailbreak" / "scripts"]:
        if (c / "parseltongue.py").exists():
            return c
    # 3) Fallback: standard Hermes godmode skill layout
    hermes = Path(os.getenv("HERMES_HOME", Path.home() / ".hermes"))
    candidates = [
        hermes / "skills" / "red-teaming" / "godmode" / "scripts",
        hermes / "skills" / "godmode" / "scripts",
        hermes / "skills" / "and-jailbreak" / "scripts",
    ]
    for c in candidates:
        if (c / "parseltongue.py").exists():
            return c
    # 4) Last resort: sibling dir of this script (exec'd from elsewhere)
    return Path(os.getcwd())

_gm_scripts_dir = _gm_resolve_scripts_dir()

_gm_old_argv = sys.argv
sys.argv = ["_godmode_loader"]

def _gm_load(path):
    ns = dict(globals())
    ns["__name__"] = "_godmode_module"
    ns["__file__"] = str(path)
    exec(compile(open(path).read(), str(path), 'exec'), ns)
    return ns

_gm_scripts = ["parseltongue.py", "godmode_race.py", "auto_jailbreak.py"]
_kit = _gm_scripts_dir / "jailbreak_kit.py"
if _kit.exists():
    _gm_scripts.append("jailbreak_kit.py")

for _gm_script in _gm_scripts:
    _gm_path = _gm_scripts_dir / _gm_script
    if _gm_path.exists():
        _gm_ns = _gm_load(_gm_path)
        for _gm_k, _gm_v in _gm_ns.items():
            if not _gm_k.startswith('_gm_') and (callable(_gm_v) or _gm_k.isupper()):
                globals()[_gm_k] = _gm_v

sys.argv = _gm_old_argv

# Cleanup loader vars
for _gm_cleanup in ['_gm_resolve_scripts_dir', '_gm_scripts_dir', '_gm_old_argv', '_gm_load', '_gm_ns', '_gm_k',
                     '_gm_v', '_gm_script', '_gm_path', '_gm_cleanup', '_gm_scripts', '_kit']:
    globals().pop(_gm_cleanup, None)
