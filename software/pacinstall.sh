#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <package-name>"
  echo "Example: $0 htop"
  exit 1
fi

# Get the package name from the first argument
PACKAGE="$1"

# Check if the package is already installed
if pacman -Q "$PACKAGE" >/dev/null 2>&1; then
  echo "Skipping: $PACKAGE is already installed."
else
  echo "Package $PACKAGE is not installed. Installing..."
  sudo pacman -S --noconfirm "$PACKAGE"
  if [ $? -eq 0 ]; then
    echo "Package $PACKAGE installed successfully."
  else
    echo "Failed to install package $PACKAGE."
    exit 1
  fi
fi
