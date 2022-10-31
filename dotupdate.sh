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

echo -n "Updating .zshrc file..."
cp ~/.zshrc .zshrc
errorCheck

cp --parents ~/.config/fish/config.fish .config/fish/config.fish

echo -n "Updating kitty config file..."
cp --parents ~/.config/kitty/kitty.conf .config/kitt/kitty.conf
errorCheck

echo -n "Updating vi config files..."
cp ~/.exrc .exrc
errorCheck

echo -n "Updating vim config files..."
cp ~/.vimrc .vimrc
errorCheck

echo -n "Updating nvim/init.lua file..."
cp --parents ~/.config/nvim/init.lua .config/nvim/init.lua
errorCheck
echo -n "Updating nvim/lua/user/init.lua file..."
cp --parents ~/.config/nvim/lua/user/init.lua .config/nvim/lua/user/init.lua
errorCheck

echo -n "Updating lvim/config.lua file..."
cp --parents ~/.config/lvim/config.lua .config/lvim/config.lua
errorCheck

echo -n "Updating .doom.d files..."
cp -parents ~/.doom.d/* .doom.d/
errorCheck

echo "Updating vscodium keybindings file..."
cp --parents ~/.config/VSCodium/user/keybindings.json .config/VSCodium/user/keybindings.json
errorCheck
echo "Updating vscodium settings file..."
cp --parents ~/.config/VSCodium/user/settings.json .config/VSCodium/user/settings.json
errorCheck
