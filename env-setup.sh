##############################################################################
#     Installation script for full developer environment on Ubuntu 18.04     #
#	      Copyright 2018 Patryk Kobielak All Rights Reserved             #
##############################################################################

# Get required packages
sudo apt install git tmux curl zsh vim

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install oh-my-tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Add zsh-autosuggestions to plugin list in .zshrc"
echo "\tvim ~/.zshrc"

