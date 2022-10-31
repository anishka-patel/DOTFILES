#!/usr/bin/bash
# Title: Dotupdate script
# Description: A script to update releant files to relevant directories
# Created: [2022-10-31 Mon]
# Usage: ./dotupdate.sh

errorCheck () {
    if [[ $? -eq 0 ]]; then
        echo "Completed"
    else
        echo "Error"
    fi
}

echo -n "Updating .bashrc file..."
cp ~/.bashrc .
errorCheck

echo -n "Updating .zshrc file..."
cp ~/.zshrc .
errorCheck

echo -n "Updating fish config file..."
cp  ~/.config/fish/config.fish .config/fish/
errorCheck

echo -n "Updating kitty config file..."
cp  ~/.config/kitty/kitty.conf .config/kitty/
errorCheck

echo -n "Updating vi config files..."
cp ~/.exrc .
errorCheck

echo -n "Updating vim config files..."
cp ~/.vimrc .
errorCheck

echo -n "Updating nvim/init.lua file..."
cp  ~/.config/nvim/init.lua .config/nvim/
errorCheck
echo -n "Updating nvim/lua/user/init.lua file..."
cp  ~/.config/nvim/lua/user/init.lua .config/nvim/lua/user/
errorCheck

echo -n "Updating lvim/config.lua file..."
cp  ~/.config/lvim/config.lua .config/lvim/
errorCheck

echo -n "Updating .doom.d files..."
cp  ~/.doom.d/* .doom.d/
errorCheck

echo -n "Updating vscodium keybindings file..."
cp  ~/.config/VSCodium/User/keybindings.json .config/VSCodium/User/
errorCheck
echo -n "Updating vscodium settings file..."
cp  ~/.config/VSCodium/User/settings.json .config/VSCodium/User/
errorCheck
