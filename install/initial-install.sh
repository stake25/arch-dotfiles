#!/bin/bash

cd ~

# clone the project dotfiles into the config directory
git clone https://github.com/stake25/arch-dotfiles.git .config/

# install yay
~/.config/software/custom/yay.sh

# run rebuild
~/.config/software/rebuild.sh

# setup profile reference
cp ~/.config/zshrc/zshrc ~/.zshrc

# change shell
chsh /bin/zsh
echo "Restart your terminal session to see the changes"
