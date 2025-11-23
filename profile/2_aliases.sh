#!/bin/bash

EDITOR="codium"

# core aliases
alias reload='source ~/.zshrc'
alias rebuild='~/.config/software/rebuild.sh'
alias update='sudo pacman -Syyu && yay -Syyu && flatpak update'

# editor aliases
alias edit="$EDITOR . && exit"
alias profile="cd ~/.config/profile && edit"
alias config="cd ~/.config && edit"
alias nconfig="cd ~/.config/nvim/ && edit"
alias packages="$EDITOR ~/.config/software/packages.sh"
alias scripts="cd ~/.config/scripts/ && edit"

# program aliases
alias lg='lazygit'
alias ld='lazydocker'
alias lh='lazyssh'
alias code='codium'
