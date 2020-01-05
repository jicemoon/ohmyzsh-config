## curl 
```bash
sudo apt-get install curl
```

## node 
```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```
> 此种方法, 会自动同时安装npm

## npm
```
sudo apt install npm  // 安装npm
sudo npm install npm@latest -g  // 升级到最新版
sudo npm install npm -g  // 升级npm
sudo npm install -g n   // 用于安装node.js的模块
```
## yarn
```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
```


## git 
```bash
sudo apt-get install git
```


## zsh & oh-my-zsh
[Ubuntu 16.04下安装zsh和oh-my-zsh](https://www.cnblogs.com/easonjim/p/7863099.html)
### 安装zsh
```bash
sudo apt-get install zsh
```

### 把默认的Shell改成zsh(不要使用sudo)
```bash
chsh -s /bin/zsh
```

### 安装oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### 安装zsh-syntax-highlighting语法高亮插件
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
### 安装zsh-autosuggestions语法历史记录插件
```bash
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

### 重置密码
1. 打开powershell, 输入以下命令, 将ubuntu默认用户设置为*root*
```bash
ubuntu config --default-user root
```
2. 打开ubuntu, 并输入以下命令, 假如你的Ubuntu中的用户名为*jicemoon*
```bash
passwd jicemoon
```
3. 根据提示, 输入并确认新的密码, 关闭ubuntu
4. 在powershell中, 输入以下命令, 将ubuntu默认用户设置为*jicemoon*
```bash
ubuntu config --default-user jicemoon
```
5. 重新打开ubuntu, 测试密码是否修改成功

