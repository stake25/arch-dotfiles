#!/bin/bash

# Check if starship is installed
if ! command -v starship &> /dev/null; then
    echo "Installing Starship"
    
    # Install starship custom
    curl -sS https://starship.rs/install.sh | sh
    
    if [ $? -eq 0 ]; then
        echo "Starship has been successfully installed."
    else
        echo "Failed to install Starship. Please check your internet connection or repository configuration."
        exit 1
    fi
else
    echo "Skipping: Starship is already installed"
fi   
