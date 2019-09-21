#!/bin/bash -xe

# Git
git config --global user.email "jalalabdulaziz@gmail.com"
git config --global user.name "Jalal Abdul Aziz"
git config --global core.autocrlf input

# Install dotfiles
mkdir $HOME/.scripts
cp -u "wsl/configs/.aliases" "$HOME/.aliases"
cp -u "wsl/configs/.bash_profile" "$HOME/.bash_profile"

# Install scripts
cp -u "$HOME/.scripts/purgecloudflarecache.sh" "wsl/scripts/"