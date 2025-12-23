## Introduction

This repository contains my personal dotfiles, which include configurations for various tools and applications. I prefer using the [Dracula theme](https://draculatheme.com/) for as many tools as possible because it is widely supported by different applications. This choice allows me to maintain a consistent and visually appealing appearance across all my tools effortlessly.

## Stow - Dotfile Management

To manage my dotfiles, I use the `stow` tool. It allows me to create symbolic links from my repository to the appropriate locations in the home directory. This way, I can keep my configuration files organized in this repository while seamlessly using them in my system.

### Installing Stow on Ubuntu

If you are using an Ubuntu-based system, you can install `stow` using the following command:

```bash
sudo apt update
sudo apt install stow -y
```

## Getting Started

To use my dotfiles, follow these steps:

1. **Clone this Repository:**

   Clone this repository to your local machine:

   ```bash
   git clone git@github.com:Arthurk12/.dotfiles.git ~/.dotfiles
   ```

2. **Install the Dependencies:**

   Run the provided `install.sh` script. 

   ```bash
   cd ~/.dotfiles
   ./install.sh
   ```

3. **Use Stow to Manage Dotfiles:**

   When experimenting with an unknown `stow` command or adding new configurations, it's important to use the `-n` flag, which performs a dry run. This way, it will only simulate the changes without applying them, allowing you to preview the changes before actually applying them. For example:

   ```bash
   stow -n -vSt ~ git htop nvim 
   ```

   The above command will show you what changes will be made without actually creating any symbolic links. Once you are confident with the changes, you can remove the `-n` flag to apply the configurations.

   ```bash
   stow -vSt ~ git htop nvim 
   ```

   The command above will create symbolic links for the specified configurations in your home directory (`~`). You can add or remove configurations as needed by modifying the list of configuration names.
