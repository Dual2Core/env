#!/usr/bin/env bash
##############################################################################
#     Installation script for full developer environment on Ubuntu 18.04     #
#	          Copyright 2018 Patryk Kobielak All Rights Reserved             #
##############################################################################

# Get required packages
sudo apt install git tmux curl zsh vim python3 python3-pip

# Install oh-my-zsh
chsh -s $(which zsh)
bash install.sh


# Install oh-my-tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Add zsh-autosuggestions to plugin list in .zshrc"
echo "\tvim ~/.zshrc"
