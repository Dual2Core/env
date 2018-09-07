#!/usr/bin/env bash
##############################################################################
#     Installation script for full developer environment on Ubuntu 18.04     #
#	          Copyright 2018 Patryk Kobielak All Rights Reserved             #
##############################################################################
# IMPORTANT NOTE: Remember to run with 'sudo'

set -e # Exit on fail
set -x # Print command before execution

unalias cp

# Get required packages
apt-get update
apt-get -y install git tmux curl zsh vim python3 python3-pip

# Install oh-my-zsh
chsh -s $(which zsh)
bash install.sh


# Copy oh-my-tmux configuration
cp -f .tmux.conf ~/.tmux.conf
cp -f .tmux.conf.local ~/.tmux.conf.local

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy zsh configuration
cp -f .zshrc ~/.zshrc
