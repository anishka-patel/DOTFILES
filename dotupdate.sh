#!/usr/bin/bash
# Title: Dotupdate script
# Description: A script to update releant files to relevant directories
# Created: [2022-10-31 Mon]
# Usage: ./dotupdate.sh

errorCheck () {
    if [[ $? -eq 0 ]]; then
        echo "Completed"
    fi
    echo "Error"
}

echo -n "Updating .bashrc file..."
cp ~/.bashrc .
errorCheck

echo -n "Updating .zshrc file..."
cp ~/.zshrc .
errorCheck

echo -n "Updating fish config file..."
cp --parents ~/.config/fish/config.fish .config/fish/
errorCheck

echo -n "Updating kitty config file..."
cp --parents ~/.config/kitty/kitty.conf .config/kitty/
errorCheck

echo -n "Updating vi config files..."
cp ~/.exrc .
errorCheck

echo -n "Updating vim config files..."
cp ~/.vimrc .
errorCheck

echo -n "Updating nvim/init.lua file..."
cp --parents ~/.config/nvim/init.lua .config/nvim/
errorCheck
echo -n "Updating nvim/lua/user/init.lua file..."
cp --parents ~/.config/nvim/lua/user/init.lua .config/nvim/lua/user/
errorCheck

echo -n "Updating lvim/config.lua file..."
cp --parents ~/.config/lvim/config.lua .config/lvim/
errorCheck

echo -n "Updating .doom.d files..."
cp --parents ~/.doom.d/* .doom.d/
errorCheck

echo "Updating vscodium keybindings file..."
cp --parents ~/.config/VSCodium/user/keybindings.json .config/VSCodium/user/
errorCheck
echo "Updating vscodium settings file..."
cp --parents ~/.config/VSCodium/user/settings.json .config/VSCodium/user/
errorCheck
