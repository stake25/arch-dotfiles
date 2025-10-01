#!/bin/bash

# start staship if it exists
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# add zsh autosuggestions
zauto="/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
if [ -f "$zauto" ]; then
  source $zauto
fi
