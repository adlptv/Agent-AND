# PINTAR Installation Reference

## Package Managers

| OS | Manager | Install Command |
|----|---------|----------------|
| Windows | Chocolatey | `choco install <pkg>` |
| Windows | winget | `winget install <pkg>` |
| Windows | Scoop | `scoop install <pkg>` |
| macOS | Homebrew | `brew install <pkg>` |
| Linux | apt | `sudo apt install <pkg>` |
| Linux | dnf | `sudo dnf install <pkg>` |
| Cross | npm | `npm install -g <pkg>` |
| Cross | pip | `pip install <pkg>` |
| Cross | cargo | `cargo install <pkg>` |
| Cross | go | `go install <pkg>` |

## Windows Paths
- User: `%USERPROFILE%` (C:\Users\Name)
- AppData: `%APPDATA%`, `%LOCALAPPDATA%`
- Programs: `%ProgramFiles%`, `%ProgramFiles(x86)%`
- System: `%SystemRoot%` (C:\Windows)
- Temp: `%TEMP%`
- Desktop/Downloads/Documents: `%USERPROFILE%\Desktop` etc.

## Unix/macOS Paths
- Home: `~/` or `/Users/name` (macOS), `/home/name` (Linux)
- Config: `~/.config/`
- Bin: `/usr/local/bin`, `/usr/bin`
- Opt: `/opt/`
- Etc: `/etc/`
- Temp: `/tmp/`

## Tool Locations
- Git: `C:\Program Files\Git` | `/usr/bin/git`
- Node: `%ProgramFiles%\nodejs` | `/usr/local/bin/node`
- Python: `%LOCALAPPDATA%\Programs\Python` | `/usr/local/bin/python3`
- Docker: `%ProgramFiles%\Docker` | `/usr/bin/docker`
- VS Code: `%LOCALAPPDATA%\Programs\Microsoft VS Code` | `/Applications/VS Code.app`
- Go: `%USERPROFILE%\go` | `/usr/local/go`
- Rust: `%USERPROFILE%\.cargo` | `~/.cargo`
