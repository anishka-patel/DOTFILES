#!/usr/bin/bash
# Title: Dotconfig Script
# Description: A script file to copy relevant files to relevent directories and backup where it is required
# Created: [2022-09-16 Fri]
# Usage: ./dotconfig.sh

errorCheck () {
    if [[ $? -eq 0 ]]; then
        echo "Completed"
    else
        echo "Error"
    fi
}

if [[ -f ~/.bashrc ]]; then
    echo -n "Backing up old .bashrc file..."
    mv ~/.bashrc ~/.bashrc.bak
    errorCheck
fi
echo -n "Setting up bash files..."
cp .bashrc ~
errorCheck

if [[ -f ~/.zshrc ]]; then
    echo -n "Backing up old .zshrc file..."
    mv ~/.zshrc ~/.zshrc.bak
    errorCheck
fi
echo -n "Setting up zsh files..."
cp .zshrc ~
errorCheck

if [[ -f ~/.config/fish/config.fish ]]; then
    echo -n "Backing up old config.fish file..."
    mv ~/.config/fish/config.fish ~/.config/fish/config.fish.bak
    errorCheck
fi
echo -n "Setting up fish config files..."
cp  .config/fish/config.fish ~/.config/fish/
errorCheck

if [[ -f ~/.config/kitty/kitty.conf ]]; then
    echo -n "Backing up old kitty.conf file..."
    mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.bak
    errorCheck
fi
echo -n "Setting up kitty files..."
cp  .config/kitty/kitty.conf ~/.config/kitty/
errorCheck

if [[ -f ~/.exrc ]]; then
    echo -n "Backing up old vim files..."
    mv ~/.exrc ~/.exrc.bak
    errorCheck
fi
echo -n "Setting up vi files..."
cp .exrc ~
errorCheck

if [[ -f ~/.vimrc ]]; then
    echo -n "Backing up old vim files..."
    mv ~/.vimrc ~/.vimrc.bak
    errorCheck
fi
echo -n "Setting up vim files..."
cp .vimrc ~
errorCheck

if [[ -f ~/.config/nvim/init.lua ]]; then
    echo -n "Backing up old nvim/init.lua"
    mv ~/.config/nvim/init.lua ~/.config/nvim/init.lua.bak
    errorCheck
fi
echo -n "Setting up nvim/init.lua"
cp  .config/nvim/init.lua ~/.config/nvim/
errorCheck
if [[ -f ~/.config/nvim/lua/user/init.lua ]]; then
    echo -n "Backing up old nvim/lua/user/init.lua"
    mv ~/.config/nvim/lua/user/init.lua ~/.config/nvim/lua/user/init.lua.bak
    errorCheck
fi
echo -n "Setting up nvim/lua/user/init.lua"
cp  .config/nvim/lua/user/init.lua ~/.config/nvim/lua/user/
errorCheck

if [[ -f ~/.config/lvim/init.lua ]]; then
    echo -n "Backing up old lvim/config.lua"
    mv ~/.config/lvim/config.lua ~/.config/lvim/config.lua.bak
    errorCheck
fi
echo -n "Setting up lvim/config.lua"
cp .config/lvim/config.lua ~/.config/lvim/
errorCheck

if [[ -d ~/.doom.d/ ]]; then
    echo -n "Backing up old doom emacs files..."
    mv ~/.doom.d ~/.doom.d.bak
    errorCheck
fi
echo -n "Setting up doom files"
cp  .doom.d/* ~/.doom.d/
errorCheck

echo "Installing vscodium extensions..."
cat packages-list/vscodium-packages-list.txt | xargs -L1 codium --install-extension
echo "Installing vscodium extensions... Completed"
if [[ -d ~/.config/VSCodium/User ]]; then
    echo -n "Backing old codium files"
    mv ~/.config/VSCodium/User/keybindings.json ~/.config/VSCodium/User/keybindings.json.bak
    errorCheck
    mv ~/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json.bak
    errorCheck
fi
echo "Moving codium files..."
cp .config/VSCodium/User/keybindings.json ~/.config/VSCodium/User/keybindings.json
errorCheck
cp .config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json
errorCheck

pip install konsave

echo "Installing KDE Config"
if [[ -e ~/ani-kde-config.knsv ]]; then
    echo -n "Backing up old kde config files..."
    mv ~/ani-kde-config.knsv ~/ani-kde-config.knsv.bak
    errorCheck
fi
echo -n "Moving kde config files..."
cp ./exports/ani-kde-config.knsv ~/ani-kde-config.knsv
errorCheck
echo -n "Applying kde config files..."
konsave -i ~/ani-kde-config.knsv
errorCheck
