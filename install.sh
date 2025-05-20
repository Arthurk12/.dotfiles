#!/bin/bash

# Install dracula theme for gnome terminal
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# Install stow
sudo apt update
sudo apt install stow -y

echo "Installation complete! Please log out and log back in to start using zsh with oh-my-zsh, Powerlevel10k, and the Dracula theme."
