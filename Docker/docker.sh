#!/bin/bash

# Install Docker Official version
sudo pacman -Sy docker --noconfirm

# Install Docker development version
git clone https://aur.archlinux.org/docker-git.git
sudo pacman -S base-devel --noconfirm
cd docker-git
makepkg -sri
cd ..
sudo rm -rfv docker-git

# Install docker-compose
sudo pacman -Sy docker-compose --noconfirm

# Start Docker on system startup
sudo systemctl enable docker.service

# Start Docker now
sudo systemctl start docker.service

# Add your user to the `docker` group so you can use Docker without sudo
sudo usermod -a -G docker $(whoami)
