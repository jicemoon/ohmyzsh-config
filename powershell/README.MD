```powershell
Install-Module posh-git
Install-Module oh-my-posh
Install-Module PSColor
Install-Module -Name PSReadLine -Force -SkipPublisherCheck
```

路径
```
C:\Users\[user]\Documents\WindowsPowerShell
```


```
C:\Users\[user]\AppData\Local\oh-my-posh
```

## 安装字体
> * [PowerLine](https://github.com/powerline/fonts)
> * [Fira Code](https://github.com/tonsky/FiraCode)
> * [Cascadia Code](https://github.com/microsoft/cascadia-code)

## 添加autosuggestion工具
```powershell
Install-Module PSReadLine -RequiredVersion 2.1.0
```
#### 配置autosuggestion
1. Check if you already have a profile
```powershell
Test-path $profile
```
2. If false, create one
```powershell
New-item –type file –force $profile
```
3. If yes, edit it
```powershell
notepad $profile
```
4. Run this command and close your terminal
```powershell
Set-ExecutionPolicy RemoteSigned
```
5. Update your profile file like in step 3, and add those lines to it
```powershell
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
```


[Themes](https://ohmyposh.dev/docs/themes)
