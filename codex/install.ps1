$user = $env:USERPROFILE
$refs = (Split-Path -Parent $MyInvocation.MyCommand.Path) + "\..\and-references"
$dest = "$user\.codex\and\references"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Recurse -Force "$refs\*" $dest
Copy-Item -Force "$(Split-Path -Parent $MyInvocation.MyCommand.Path)\..\and-scripts\search.py" "$user\.codex\and\scripts\search.py"
Write-Host "`nAND installed. Agent Not Detect.`n" -ForegroundColor Green
