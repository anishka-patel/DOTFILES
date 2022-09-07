
# Table of Contents

1.  [Updating cache & packages](#org8ad48b2)
2.  [Package Managers](#org2a9498e)
3.  [System Utilities](#orgdf11f1c)
4.  [Desktop Manager](#org51a4975)
5.  [Desktop Environment](#org0d2c90e)
    1.  [KDE Plasma Desktop](#org6a9502c)
    2.  [Other Plasma Utilities](#orgf1fdfe1)
    3.  [KDE File manager](#org6e57809)
    4.  [KDE Battery manager](#org817a1d0)
    5.  [KDE GUI Package manager](#org502bed1)
    6.  [KDE Virtual consoles](#org8652607)
6.  [Fonts](#org67f58e3)
7.  [Shells](#org1e4a0c3)
8.  [Firewall](#orge99ed17)
9.  [Text Editors](#orgd04c268)
10. [Web Browsers](#org9accfc6)
11. [Languages, Runtime & Development Environment](#org7cb2646)
    1.  [Most Important](#orgf98084b)
    2.  [Python](#org36bc0e8)
    3.  [Node](#org4099e2c)
    4.  [Rust](#org0f22a0d)
    5.  [Lua](#org5817df2)
    6.  [Dotnet](#org8c6e5bf)
    7.  [Mono](#org0822d28)
12. [Game & 3d Modelling](#org1707759)
13. [Audio, Video & Multimedia](#org2e632e5)
    1.  [Photo Viewer & editor](#orgb64c7a9)
    2.  [Multimedia viewer & editor](#orgcf7153d)
14. [Virtual Machines & Containers](#org2c69a46)
    1.  [Containers](#org0c5b0b4)
    2.  [Virtual Machines](#orgdc7bb5d)
15. [Office Utilities](#org0545248)
16. [Other Utilities](#orgdb0b627)



<a id="org8ad48b2"></a>

# Updating cache & packages

    #! /usr/bin/bash
    
    # sudo apt update && sudo apt upgrade -y
    # sudo dnf update
    # sudo apk update
    sudo pacman -Syu --noconfirm


<a id="org2a9498e"></a>

# Package Managers

    sudo pacman -S flatpak appimagelauncher yay --noconfirm


<a id="orgdf11f1c"></a>

# System Utilities

    sudo pacman -S htop git --noconfirm
    # sudo pacman -S mlocate ncdu sysstat --noconfirm


<a id="org51a4975"></a>

# Desktop Manager

    sudo pacman -S sddm --noconfirm


<a id="org0d2c90e"></a>

# Desktop Environment


<a id="org6a9502c"></a>

## KDE Plasma Desktop

    sudo pacman -S plasma-desktop --noconfirm


<a id="orgf1fdfe1"></a>

## Other Plasma Utilities

    sudo pacman -S plasma-nm plasma-pa kdeplasma-addons kde-gtk-config --noconfirm


<a id="org6e57809"></a>

## KDE File manager

    sudo pacman -S doplhin --noconfirm


<a id="org817a1d0"></a>

## KDE Battery manager

    sudo pacman -S powerdevil --noconfirm


<a id="org502bed1"></a>

## KDE GUI Package manager

    sudo pacman -S pamac --noconfirm


<a id="org8652607"></a>

## KDE Virtual consoles

    sudo pacman -S konsole yakuake --noconfirm


<a id="org67f58e3"></a>

# Fonts

    sudo yay -S nerd-fonts-complete
    # sudo pacman -S ttf-cascadia-code ttf-dejavu ttf-fira-code ttf-roboto ttf-roboto-mono noto-fonts noto-fonts-emoji terminus-font --noconfirm


<a id="org1e4a0c3"></a>

# Shells

    # sudo pacman -S sh bash --noconfirm
    sudo pacman -S zsh fish --noconfirm


<a id="orge99ed17"></a>

# Firewall

    sudo pacman -S firewall --noconfirm
    # sudo pacman -S ufw gufw --noconfirm


<a id="orgd04c268"></a>

# Text Editors

    sudo pacman -S neovim emacs --noconfirm
    # sudo pacman -S vi vim --noconfirm


<a id="org9accfc6"></a>

# Web Browsers

    sudo pacman -S firefox --noconfirm
    sudo flatpak install com.google.Chrome -y
    # sudo pacman -S brave chromium --noconfirm
    # sudo yay -S google.chrome --noconfirm


<a id="org7cb2646"></a>

# Languages, Runtime & Development Environment


<a id="orgf98084b"></a>

## Most Important

    sudo pacman -S python nodejs rust --noconfirm


<a id="org36bc0e8"></a>

## Python

    sudo pacman -S python ipython --noconfirm


<a id="org4099e2c"></a>

## Node

    sudo pacman -S nodejs --noconfirm


<a id="org0f22a0d"></a>

## Rust

    sudo pacman -S rustup rust-analyzer --noconfirm


<a id="org5817df2"></a>

## Lua

    sudo pacman -S lua luarocks luajit --noconfirm


<a id="org8c6e5bf"></a>

## Dotnet

    sudo pacman -S dotnet-host dotnet-sdk dotnet-runtime dotnet-targeting-pack --noconfirm


<a id="org0822d28"></a>

## Mono

    sudo pacman -S mono mono-addins --noconfirm


<a id="org1707759"></a>

# Game & 3d Modelling

    sudo pacman -S godot blender freecad --noconfirm


<a id="org2e632e5"></a>

# Audio, Video & Multimedia


<a id="orgb64c7a9"></a>

## Photo Viewer & editor

    sudo pacman -S gimp krita inkscape --noconfirm
    # sudo pacman -S gwenview --noconfirm


<a id="orgcf7153d"></a>

## Multimedia viewer & editor

    sudo pacman -S vlc elias kdenlive --noconfirm
    # sudo pacman -S audacity lmms handbrake --noconfirm


<a id="org2c69a46"></a>

# Virtual Machines & Containers


<a id="org0c5b0b4"></a>

## Containers

    sudo pacman -S docker virtualbox vagrant --noconfirm
    # sudo pacman -S lxc lxd --noconfirm


<a id="orgdc7bb5d"></a>

## Virtual Machines

    sudo pacman -S virtualbox vagarant --noconfirm
    # sudo pacman -S virt-manager --noconfirm


<a id="org0545248"></a>

# Office Utilities

    sudo pacman -S okular onlyoffice-desktopeditors --noconfirm
    # sudo pacman -S dia --noconfirm
    # sudo pacman -S skanlite --noconfirm


<a id="orgdb0b627"></a>

# Other Utilities

    sudo pacman -S spectacle uget gestures ventoy --noconfirm

