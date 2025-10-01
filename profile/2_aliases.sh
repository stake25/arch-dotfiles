#!/bin/bash

# core aliases
alias reload='source ~/.zshrc'
alias rebuild='~/.config/software/rebuild.sh'
alias update='sudo pacman -Syyu && yay -Syyu && flatpak update'

# editor aliases
alias profile="cd ~/.config/profile && $EDITOR ."
alias config="cd ~/.config && $EDITOR ."
alias packages="$EDITOR ~/.config/software/packages.sh"
alias scripts="cd ~/.config/scripts/ && $EDITOR ."

# program aliases
alias lg='lazygit'
alias ld='lazydocker'
alias lh='lazyssh'
