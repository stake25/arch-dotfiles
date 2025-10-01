#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <package-name>"
  echo "Example: $0 visual-studio-code-bin"
  exit 1
fi

PACKAGE="$1"

# Check if the package is already installed
if yay -Q "$PACKAGE" >/dev/null 2>&1; then
  echo "Skipping: $PACKAGE is already installed."
else
  echo "Package $PACKAGE is not installed. Installing via yay..."
  yay -S --noconfirm "$PACKAGE"
  if [ $? -eq 0 ]; then
    echo "Package $PACKAGE installed successfully."
  else
    echo "Failed to install package '$PACKAGE'."
    exit 1
  fi
fi
