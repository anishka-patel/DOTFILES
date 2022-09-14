#!/usr/bin/bash
# Creator: Anishka Patel
# Title: Package Generation Script
# Description: 
# A script that generates list of packages into various files
# that can be used to install them back. 
# Created: 11-09-2022

echo "Starting Packages list generation script."
echo 
echo -n "Generating Pacman packages list..."
pacman -Qn | awk '{print $1}' > pacman-packages-list.txt 
echo "Completed"
echo -n "Generating Yay packages list..."
yay -Qm | awk '{print $1}'> yay-packages-list.txt
echo "Completed"
echo -n "Generating Brew packages list..." 
brew list > brew-packages-list.txt
echo "Completed"
echo -n "Generating Flatpak packages list..."
flatpak list | awk '{print $1}' > flatpak-packages-list.txt
echo "Completed"
echo -n "Generating Npm packages list..."
npm -g list | awk '{print $2}' | awk -F '@' '{print $1}' > npm-packages-list.txt
echo "Completed"
echo -n "Generating Pip packages list..."
pip list | awk '{print $1}' > pip-packages-list.txt
echo "Completed"
echo -n "Generating Go packages list..."
go list ... > go-packages-list.txt
echo "Completed"
echo -n "Generating Cargo packages list..."
cargo install --list > cargo-packages-list.txt
echo "Completed"
echo -n "Generating VSCodium packages list..."
vscodium --list-extensions > vscodium-packages-list.txt
echo "Completed"
echo
echo "Finished Packages list generation script."
