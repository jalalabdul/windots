#!/bin/bash -xe

# Update dotfiles
cp -u "$HOME/.aliases" "wsl/configs/.aliases"
cp -u "$HOME/.bash_profile" "wsl/configs/.bash_profile"

# Update scripts
cp -u "$HOME/.scripts/purgecloudflarecache.sh" "wsl/scripts/"
