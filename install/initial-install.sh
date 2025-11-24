#!/bin/bash

# move to the starting point
cd ~

# install git
sudo pacman -S --needed git base-devel

# clone the project dotfiles into the config directory
mv .config .config.bak
git clone https://github.com/stake25/arch-dotfiles.git .config/

# install yay
~/.config/software/custom/yay.sh

# run rebuild
~/.config/software/rebuild.sh

# setup profile reference
cp ~/.config/zshrc/zshrc ~/.zshrc

# change to ssh url
# git remot set-url origin git@github.com:stake25/arch-dotfiles.git

# change shell
chsh -s /bin/zsh
echo "Restart your terminal session to see the changes"
