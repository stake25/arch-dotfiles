#!/bin/bash

# install yay if it doesn't exist on system
if command -v yay >/dev/null 2>&1; then
  echo "yay is already installed installed."
else
  echo "yay is not installed. Installing"
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -rf yay
fi
