#!/bin/bash

TERMINAL_PROFILE_NAME="Dracula"

cd gnome-terminal
# Create gnome terminal empty profile called DRACULA where the theme is applied
chmod +x ./create_terminal_profile.sh
./create_terminal_profile.sh ${TERMINAL_PROFILE_NAME} 

# Apply gnome-terminal theme in the fresh new terminal profile
git clone https://github.com/dracula/gnome-terminal ./gnome-terminal-clone
cd ./gnome-terminal-clone
chmod +x ./install.sh
./install.sh --scheme Dracula --profile ${TERMINAL_PROFILE_NAME} --skip-dircolors
rm -rf ./gnome-terminal-clone

# Install stow
sudo apt update
sudo apt install stow -y

echo "Installation complete!" 

