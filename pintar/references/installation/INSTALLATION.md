# PINTAR — Installation & System Paths

## Package Managers

| OS | Manager | Command |
|----|---------|---------|
| Windows | Chocolatey | `choco install` |
| Windows | winget | `winget install` |
| Windows | Scoop | `scoop install` |
| macOS | Homebrew | `brew install` |
| Linux | apt | `apt install` |
| Linux | dnf/yum | `dnf install` |
| Cross | npm | `npm install -g` |
| Cross | pip | `pip install` |
| Cross | cargo | `cargo install` |
| Cross | go | `go install` |

## Windows Paths

| Path | Environment | Typical Value |
|------|------------|---------------|
| User profile | `%USERPROFILE%` | `C:\Users\Name` |
| AppData Roaming | `%APPDATA%` | `C:\Users\Name\AppData\Roaming` |
| AppData Local | `%LOCALAPPDATA%` | `C:\Users\Name\AppData\Local` |
| Program Files | `%ProgramFiles%` | `C:\Program Files` |
| Program Files x86 | `%ProgramFiles(x86)%` | `C:\Program Files (x86)` |
| System root | `%SystemRoot%` | `C:\Windows` |
| Temp | `%TEMP%` | `C:\Users\Name\AppData\Local\Temp` |
| Desktop | — | `%USERPROFILE%\Desktop` |
| Downloads | — | `%USERPROFILE%\Downloads` |
| Documents | — | `%USERPROFILE%\Documents` |
| Start Menu | `%ProgramData%` | `C:\ProgramData\Microsoft\Windows\Start Menu` |

## Unix/macOS Paths

| Path | Typical Value |
|------|--------------|
| Home | `/home/user` or `/Users/user` |
| Config | `~/.config/` |
| Local share | `~/.local/share/` |
| Binaries | `/usr/local/bin`, `/usr/bin` |
| Opt software | `/opt/` |
| System config | `/etc/` |
| Temp | `/tmp/` |
| Var | `/var/` (logs, caches, databases) |
| LaunchAgents (macOS) | `~/Library/LaunchAgents/` |

## Common Install Locations

| Tool | Windows | macOS/Linux |
|------|---------|-------------|
| Git | `C:\Program Files\Git` | `/usr/bin/git` |
| Node.js | `%ProgramFiles%\nodejs` | `/usr/local/bin/node` |
| Python | `%LOCALAPPDATA%\Programs\Python` | `/usr/local/bin/python3` |
| Docker | `%ProgramFiles%\Docker` | `/usr/bin/docker` |
| VS Code | `%LOCALAPPDATA%\Programs\Microsoft VS Code` | `/Applications/VS Code.app` |
| Go | `%USERPROFILE%\go` | `/usr/local/go` |
| Rust | `%USERPROFILE%\.cargo` | `~/.cargo` |
| Java | `%ProgramFiles%\Java` | `/usr/lib/jvm` |
