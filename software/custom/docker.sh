#!/usr/bin/env bash

# Check if Docker is already installed
if ! command -v docker &> /dev/null; then
    echo "Docker not found. Installing..."
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm docker docker-compose docker-buildx

    # Enable and start Docker service
    sudo systemctl enable --now docker.service
    echo "Docker installed and enabled."
else
    echo "Skipping: Docker is already installed"
fi

# Check if user is in docker group
if ! id -nG "$USER" | grep -qw "docker"; then
    sudo usermod -aG docker "$USER"
    echo "User added to docker group. Log out and back in to apply."
else
    echo "Skipping: $USER is already added to the docker group"
fi 
