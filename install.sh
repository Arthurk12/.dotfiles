#!/bin/bash

# Install dracula theme for gnome terminal
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# Install zsh
echo "Installing zsh..."
sudo apt update
sudo apt install zsh -y

# Set zsh as the default shell
chsh -s $(which zsh)

# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install p10k theme
echo "Installing Powerlevel10k theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

echo "Installation complete! Please log out and log back in to start using zsh with oh-my-zsh, Powerlevel10k, and the Dracula theme."
