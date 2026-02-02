## install zsh
```bash
apt install zsh -y
```

## set zsh as default
```bash
chsh -s $(which zsh)
```

## install oh my zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## set theme and plugin on oh my zsh
```bash

## Zsh Must-Have Plugin
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

apt install chroma ## enable ccat command 



vim ~/.zshrc

## find ZSH_THEME= and set theme 

ZSH_THEME="fino-time"

## set plugin 

## find plugins=(git) and add plugins

plugins=(git zsh-autosuggestions zsh-syntax-highlighting command-not-found colorize )
```

```bash
source ~/.zshrc
```
