chcp 65001   ##这个是c:/user/document/powershell/Microsoft.PowerShell_profile.ps1
Set-PSReadlineOption -EditMode Emacs

# 设置窗口标题
$Host.UI.RawUI.WindowTitle = $((Get-Location | Get-Item ).Name)

function which($name) { Get-Command $name | Select-Object Definition }
function rmrf($item) { Remove-Item $item -Recurse -Force }
function touch($item) { New-Item $item -ItemType File }
function mkdir($item) { New-Item $item -ItemType Directory }
function mkfile($file) { "" | Out-File $file -Encoding ASCII }
Import-Module -Name 'PSColor'
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme markbull

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
