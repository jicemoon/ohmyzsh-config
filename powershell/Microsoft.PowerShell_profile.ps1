$Host.UI.RawUI.WindowTitle = $((Get-Location | Get-Item ).Name)

function which($name) { Get-Command $name | Select-Object Definition }
function rmrf($item) { Remove-Item $item -Recurse -Force }
function touch($item) { New-Item $item -ItemType File }
function mkdir($item) { New-Item $item -ItemType Directory }
function mkfile($file) { "" | Out-File $file -Encoding ASCII }

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/markbull.omp.json" | Invoke-Expression
