#!/bin/bash

source ~/.config/software/packages.sh

# install pacman packages
for pkg in "${pacman_packages[@]}"; do
  ~/.config/software/pacinstall.sh $pkg
done

# install yay packages
for pkg in "${yay_packages[@]}"; do
  ~/.config/software/yayinstall.sh $pkg
done

# install flatpaks
flatpak install -y --noninteractive flathub "${flatpak_packages[@]}"
