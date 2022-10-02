#! /usr/bin/bash
# Title: Arch KDE Install Guide Script
# Description: A script to guide through KDE setup on archlinux
# Author: Anishka Patel
# Created: [2022-08-29 Mon]
# Usage: ./install-script.sh

sudo pacman -Syu --noconfirm

sudo pacman -S flatpak --noconfirm

sudo pacman -S appimagelauncher --noconfirm

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

sudo pacman -S --needed base-devel git --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay

makepkg -si

yay --version

sudo pacman -S htop glances --noconfirm
# sudo pacman -S sysstat ifstat --noconfirm

sudo pacman -S neofetch --noconfirm

sudo pacman -S fd mlocate --noconfirm

sudo pacman -S df du --noconfirm

sudo -S git github-cli --noconfirm

# pacman -S xorg

sudo pacman -S sddm --noconfirm

sudo pacman -S plasma --noconfirm

sudo pacman -S plasma-desktop --noconfirm

sudo pacman -S plasma-nm plasma-pa kdeplasma-addons kde-gtk-config --noconfirm

sudo pacman -S konsole yakuake --noconfirm

sudo pacman -S doplhin --noconfirm

sudo pacman -S pamac --noconfirm

sudo pacman -S discover --noconfirm

sudo pacman -S kate kwrite --noconfirm

sudo pacman -S powerdevil --noconfirm

sudo pacman -S ksysguard --noconfirm

# sudo pacman -S kde-applications --noconfirm

# sudo pacman -S kde-utilities --noconfirm

sudo systemctl enable sddm.service
sudo systemctl enable NetworkManager.service

sudo yay -S nerd-fonts-complete
# sudo pacman -S ttf-cascadia-code ttf-dejavu ttf-fira-code ttf-roboto ttf-roboto-mono noto-fonts noto-fonts-emoji terminus-font --noconfirm

# sudo pacman -S sh bash --noconfirm
sudo pacman -S zsh fish --noconfirm

sudo pacman -S kitty --noconfrim

sudo pacman -S firewall --noconfirm
# sudo pacman -S ufw gufw --noconfirm

# sudo pacman -S vi vim --noconfirm
sudo pacman -S neovim emacs --noconfirm
# sudo pacman -S kate kwrite --noconfirm
# sudo yay -S vscodium-bin

sudo pacman -S firefox --noconfirm
sudo yay -S google.chrome
# sudo flatpak install com.google.Chrome -y
# sudo pacman -S brave chromium --noconfirm

# sudo pacman -S python nodejs rust go --noconfirm

sudo pacman -S python ipython --noconfirm

sudo pacman -S nodejs --noconfirm

sudo pacman -S rustup rust-analyzer --noconfirm

sudo pacman -S lua luarocks luajit --noconfirm

sudo pacman -S dotnet-host dotnet-sdk dotnet-runtime dotnet-targeting-pack --noconfirm

sudo pacman -S mono mono-addins --noconfirm

sudo pacman -S go --noconfirm

sudo pacman -S godot blender freecad --noconfirm

sudo pacman -S gwenview gimp krita inkscape --noconfirm

# Video viewing/editing/encoding
sudo pacman -S vlc kdenlive handbrake --noconfirm

# Audio viewing/editing/composition
sudo pacman -S elias audacity lmms --noconfirm

sudo pacman -S docker --noconfirm
# sudo pacman -S lxc lxd --noconfirm

sudo pacman -S virtualbox vagarant --noconfirm
# sudo pacman -S virt-manager --noconfirm

# sudo pacman -S abiword okular onlyoffice-desktopeditors simple-scan --noconfirm

sudo pacman -S onlyoffice-desktopeditors --noconfirm
# sudo pacman -S libre-office-still --noconfirm

sudo pacman -S abiword --noconfirm

# sudo pacman -S dia --noconfirm
flatpak install draw.io

sudo pacman -S okular --noconfirm

sudo pacman -S simple-scan --nocomfirm

sudo pacman -S ark spectacle uget gestures ventoy --noconfirm
