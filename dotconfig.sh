#!/usr/bin/bash
# Title: Dotconfig Script
# Description: A script file to link relevant files to relevent directories and backup where it is required
# Created: [2022-09-16 Fri]
# Usage: ./dotconfig.sh

if [[ -f ~/.bashrc ]]; then
    echo -n "Backing up old .bashrc file..."
    mv ~/.bashrc ~/.bashrc.bak
    echo "Completed"
fi
echo -n "Setting up bash files..."
ln -s .bashrc ~/.bashrc
echo "Completed"

if [[ -f ~/.zshrc ]]; then
    echo -n "Backing up old .zshrc file..."
    mv ~/.zshrc ~/.zshrc.bak
    echo "Completed"
fi
echo -n "Setting up zsh files..."
ln -s .zshrc ~/.zshrc
echo "Completed"

if [[ -f ~/.vimrc ]]; then
    echo -n "Backing up old vim files..."
    mv ~/.vimrc ~/.vimrc.bak
    echo "Completed"
fi
echo -n "Setting up vim files..."
ln -s .vimrc ~/.vimrc
echo "Completed"

if [[ -f ~/.config/nvim/init.lua ]]; then
    echo -n "Backing up old nvim/init.lua"
    mv ~/.config/nvim/init.lua ~/.config/nvim/init.lua.bak
    echo "Completed"
fi
echo -n "Setting up nvim/init.lua"
ln -s .config/nvim/init.lua ~/.config/nvim/init.lua
echo "Completed"
if [[ -f ~/.config/nvim/lua/user/init.lua ]]; then
    echo -n "Backing up old nvim/lua/user/init.lua"
    mv ~/.config/nvim/lua/user/init.lua ~/.config/nvim/lua/user/init.lua.bak
    echo "Completed"
fi
echo -n "Setting up nvim/lua/user/init.lua"
ln -s .config/nvim/lua/user/init.lua ~/.config/nvim/lua/user/init.lua
echo "Completed"

if [[ -d ~/.doom.d/ ]]; then
    echo -n "Backing up old doom emacs files..."
    mv ~/.doom.d ~/.doom.d.bak
    echo "Completed"
fi
echo -n "Setting up doom files"
ln -s .doom.d ~/.doom.d
echo "Completed"

echo "Installing vscodium extensions..."
cat packages-list/vscodium-packages-list.txt | xargs -L1 codium --install-extension
echo "Installing vscodium extensions... Completed"
if [[ -d ~/.config/VSCodium/user ]]; then
    echo -n "Backing old codium files"
    mv ~/.config/VSCodium/user/keybindings.json ~/.config/VSCodium/user/keybindings.json.bak
    mv ~/.config/VSCodium/user/settings.json ~/.config/VSCodium/user/settings.json.bak
    echo "Completed"
fi
echo "Moving codium files..."
ln -s .config/VSCodium/user/keybindings.json ~/.config/VSCodium/user/keybindings.json
ln -s .config/VSCodium/user/settings.json ~/.config/VSCodium/user/settings.json
echo "Completed"
