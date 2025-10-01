#!/bin/bash

# Define a function that checks for eza, falls back to ls
ls() {
  if command -v eza >/dev/null 2>&1; then
    eza --color=always --icons=always "$@"
  else
    # Try to use color if available
    if ls --color=auto / >/dev/null 2>&1; then
      command ls --color=auto "$@"
    else
      # For macOS or basic systems
      command ls -G "$@" 2>/dev/null || command ls "$@"
    fi
  fi
}

# Define a function that checks for eza, falls back to ll for getting all the details
ll() {
  if command -v eza >/dev/null 2>&1; then
    eza -la --color=always --icons=always "$@"
  else
    # Try to use color if available
    if ls --color=auto / >/dev/null 2>&1; then
      command ls -la --color=auto "$@"
    else
      # For macOS or basic systems
      command ls -Gla "$@" 2>/dev/null || command ls "$@"
    fi
  fi
}
