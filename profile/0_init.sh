#!/bin/bash

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/stake/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Path Additions
export PATH="$HOME/.config/scripts/:$PATH"
export PATH="$HOME/.bin/:$PATH"
