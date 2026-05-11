Set-PSReadLineOption -PredictionSource None

if (Get-Alias ls -ErrorAction SilentlyContinue) { Remove-Item alias:ls }
function ls { eza --icons=auto --group-directories-first $args }
function ks { komorebic start --whkd }

Invoke-Expression (&starship init powershell)

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$ENV:KOMOREBI_CONFIG_HOME = "$HOME\.config\komorebi"
$ENV:WHKD_CONFIG_HOME = "$HOME\.config\whkd"

Invoke-Expression (& { (zoxide init powershell | Out-String) })
