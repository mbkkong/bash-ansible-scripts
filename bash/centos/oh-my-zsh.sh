#!/bin/bash

echo "Installing Oh My ZSH"

yum install -y zsh
chsh -s /bin/zsh $USER
yum install -y wget git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc