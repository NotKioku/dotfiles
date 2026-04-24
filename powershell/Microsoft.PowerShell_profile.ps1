Set-PSReadLineOption -PredictionSource None

if (Get-Alias ls -ErrorAction SilentlyContinue) { Remove-Item alias:ls }
function ls { eza --icons=auto --group-directories-first $args }

Invoke-Expression (&starship init powershell)

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"

Invoke-Expression (& { (zoxide init powershell | Out-String) })
