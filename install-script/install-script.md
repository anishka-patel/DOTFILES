
# Table of Contents

1.  [About Script](#org5af92bc)
2.  [Updating cache & packages](#orgd1eed15)
3.  [Other Package Managers](#org572a9af)
    1.  [Flatpak](#orgbae2081)
    2.  [AppImages](#orgcd449ed)
    3.  [Homebrew](#orgbcdf72c)
    4.  [Yay](#orgff35835)
4.  [System Utilities](#orge215b46)
    1.  [System info utilities](#org867355d)
    2.  [Finding utilities](#orgffe4bfc)
    3.  [Disk Management Utilities](#org7dc69ef)
5.  [Source Code Management](#org923db2a)
6.  [Display Server](#org473152f)
7.  [Desktop Manager](#org0adf574)
8.  [Desktop Environment](#orgc032e60)
    1.  [KDE Plasma Desktop](#org2b1baff)
    2.  [KDE Plasma Desktop Minimal](#org2d30e88)
    3.  [Other Plasma Utilities](#org8d05c2d)
    4.  [KDE Virtual console](#orgc3af4e1)
    5.  [KDE File manager](#orgb698a42)
    6.  [ARCH GUI Package manager](#org31b975b)
    7.  [KDE Package Explorer](#orgb266d43)
    8.  [KDE Text Editors](#orgefd8144)
    9.  [KDE Battery manager](#orgad27327)
    10. [KDE System monitor](#orgf53a318)
    11. [KDE Applications](#org214b620)
    12. [KDE Utilities](#org09585cd)
9.  [X Session](#org121ca60)
10. [Fonts](#orgd7b54b3)
11. [Shells](#orge9e61e2)
12. [Terminals](#orgce3b2a0)
13. [Firewall](#orgfe1d1cd)
14. [Text Editors](#org39b22a7)
15. [Web Browsers](#orgc68eb84)
16. [Languages, Runtime & Development Environment](#org4f09ea2)
    1.  [Most Important](#orgd4696cb)
    2.  [Python](#orgb1f733c)
    3.  [Node](#org8a817f4)
    4.  [Rust](#orge61b8dc)
    5.  [Lua](#orgd0ffa32)
    6.  [Dotnet](#org239f5b7)
    7.  [Mono](#orgf4076ce)
    8.  [Go](#orgee672b3)
17. [Game & 3d Modeling](#org3840727)
18. [Audio, Video & Multimedia](#org87db5de)
    1.  [Photo Viewer & editor](#org27e10db)
    2.  [Audio viewer & editor](#orgd59674d)
    3.  [Video viewer & editor](#orgf976b1f)
19. [Virtual Machines & Containers](#org4ba1fe1)
    1.  [Containers](#org6e6b991)
    2.  [Virtual Machines](#org1fde2bf)
20. [Office Utilities](#org72e758e)
    1.  [Most Important](#org27790fd)
    2.  [Office Suite](#orgfabca8d)
    3.  [Rich Text Editor](#org58d763b)
    4.  [Diagram Editor](#org886011f)
    5.  [Document Viewer](#orged84559)
    6.  [Document Scan](#org50c578d)
21. [Other Utilities](#org520f97d)



<a id="org5af92bc"></a>

# About Script

    #! /usr/bin/bash
    # Title: Arch KDE Install Guide Script
    # Description: A script to guide through KDE setup on archlinux
    # Author: Anishka Patel
    # Created: [2022-08-29 Mon]
    # Usage: ./install-script.sh


<a id="orgd1eed15"></a>

# Updating cache & packages

    sudo pacman -Syu --noconfirm


<a id="org572a9af"></a>

# Other Package Managers


<a id="orgbae2081"></a>

## Flatpak

    sudo pacman -S flatpak --noconfirm


<a id="orgcd449ed"></a>

## AppImages

    sudo pacman -S appimagelauncher --noconfirm


<a id="orgbcdf72c"></a>

## Homebrew

    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash


<a id="orgff35835"></a>

## Yay

-   Get `base-devel` and `git`

    sudo pacman -S --needed base-devel git --noconfirm

-   Get `yay` repository

    git clone https://aur.archlinux.org/yay.git
    cd yay

-   Install `yay` with `makepkg`

    makepkg -si

-   Check version

    yay --version


<a id="orge215b46"></a>

# System Utilities

    sudo pacman -S htop glances --noconfirm
    # sudo pacman -S sysstat ifstat --noconfirm


<a id="org867355d"></a>

## System info utilities

    sudo pacman -S neofetch --noconfirm


<a id="orgffe4bfc"></a>

## Finding utilities

    sudo pacman -S fd mlocate --noconfirm


<a id="org7dc69ef"></a>

## Disk Management Utilities

    sudo pacman -S df du --noconfirm


<a id="org923db2a"></a>

# Source Code Management

    sudo -S git github-cli --noconfirm


<a id="org473152f"></a>

# Display Server

    # pacman -S xorg


<a id="org0adf574"></a>

# Desktop Manager

    sudo pacman -S sddm --noconfirm


<a id="orgc032e60"></a>

# Desktop Environment


<a id="org2b1baff"></a>

## KDE Plasma Desktop

    sudo pacman -S plasma --noconfirm


<a id="org2d30e88"></a>

## KDE Plasma Desktop Minimal

    sudo pacman -S plasma-desktop --noconfirm


<a id="org8d05c2d"></a>

## Other Plasma Utilities

    sudo pacman -S plasma-nm plasma-pa kdeplasma-addons kde-gtk-config --noconfirm


<a id="orgc3af4e1"></a>

## KDE Virtual console

    sudo pacman -S konsole yakuake --noconfirm


<a id="orgb698a42"></a>

## KDE File manager

    sudo pacman -S doplhin --noconfirm


<a id="org31b975b"></a>

## ARCH GUI Package manager

    sudo pacman -S pamac --noconfirm


<a id="orgb266d43"></a>

## KDE Package Explorer

    sudo pacman -S discover --noconfirm


<a id="orgefd8144"></a>

## KDE Text Editors

    sudo pacman -S kate kwrite --noconfirm


<a id="orgad27327"></a>

## KDE Battery manager

    sudo pacman -S powerdevil --noconfirm


<a id="orgf53a318"></a>

## KDE System monitor

    sudo pacman -S ksysguard --noconfirm


<a id="org214b620"></a>

## KDE Applications

List of applications: [KDE-Applications | Arch Linux](https://archlinux.org/groups/x86_64/kde-applications/)

    # sudo pacman -S kde-applications --noconfirm


<a id="org09585cd"></a>

## KDE Utilities

List of utilities: [KDE-Utilities | Arch Linux](https://archlinux.org/groups/x86_64/kde-utilities/)

    # sudo pacman -S kde-utilities --noconfirm


<a id="org121ca60"></a>

# X Session

    sudo systemctl enable sddm.service
    sudo systemctl enable NetworkManager.service


<a id="orgd7b54b3"></a>

# Fonts

    sudo yay -S nerd-fonts-complete
    # sudo pacman -S ttf-cascadia-code ttf-dejavu ttf-fira-code ttf-roboto ttf-roboto-mono noto-fonts noto-fonts-emoji terminus-font --noconfirm


<a id="orge9e61e2"></a>

# Shells

    # sudo pacman -S sh bash --noconfirm
    sudo pacman -S zsh fish --noconfirm


<a id="orgce3b2a0"></a>

# Terminals

    sudo pacman -S kitty --noconfrim


<a id="orgfe1d1cd"></a>

# Firewall

    sudo pacman -S firewall --noconfirm
    # sudo pacman -S ufw gufw --noconfirm


<a id="org39b22a7"></a>

# Text Editors

    # sudo pacman -S vi vim --noconfirm
    sudo pacman -S neovim emacs --noconfirm
    # sudo pacman -S kate kwrite --noconfirm
    # sudo yay -S vscodium-bin


<a id="orgc68eb84"></a>

# Web Browsers

    sudo pacman -S firefox --noconfirm
    sudo yay -S google.chrome
    # sudo flatpak install com.google.Chrome -y
    # sudo pacman -S brave chromium --noconfirm


<a id="org4f09ea2"></a>

# Languages, Runtime & Development Environment


<a id="orgd4696cb"></a>

## Most Important

    # sudo pacman -S python nodejs rust go --noconfirm


<a id="orgb1f733c"></a>

## Python

    sudo pacman -S python ipython --noconfirm


<a id="org8a817f4"></a>

## Node

    sudo pacman -S nodejs --noconfirm


<a id="orge61b8dc"></a>

## Rust

    sudo pacman -S rustup rust-analyzer --noconfirm


<a id="orgd0ffa32"></a>

## Lua

    sudo pacman -S lua luarocks luajit --noconfirm


<a id="org239f5b7"></a>

## Dotnet

    sudo pacman -S dotnet-host dotnet-sdk dotnet-runtime dotnet-targeting-pack --noconfirm


<a id="orgf4076ce"></a>

## Mono

    sudo pacman -S mono mono-addins --noconfirm


<a id="orgee672b3"></a>

## Go

    sudo pacman -S go --noconfirm


<a id="org3840727"></a>

# Game & 3d Modeling

    sudo pacman -S godot blender freecad --noconfirm


<a id="org87db5de"></a>

# Audio, Video & Multimedia


<a id="org27e10db"></a>

## Photo Viewer & editor

    sudo pacman -S gwenview gimp krita inkscape --noconfirm


<a id="orgd59674d"></a>

## Audio viewer & editor

    # Video viewing/editing/encoding
    sudo pacman -S vlc kdenlive handbrake --noconfirm


<a id="orgf976b1f"></a>

## Video viewer & editor

    # Audio viewing/editing/composition
    sudo pacman -S elias audacity lmms --noconfirm


<a id="org4ba1fe1"></a>

# Virtual Machines & Containers


<a id="org6e6b991"></a>

## Containers

    sudo pacman -S docker --noconfirm
    # sudo pacman -S lxc lxd --noconfirm


<a id="org1fde2bf"></a>

## Virtual Machines

    sudo pacman -S virtualbox vagarant --noconfirm
    # sudo pacman -S virt-manager --noconfirm


<a id="org72e758e"></a>

# Office Utilities


<a id="org27790fd"></a>

## Most Important

    # sudo pacman -S abiword okular onlyoffice-desktopeditors simple-scan --noconfirm


<a id="orgfabca8d"></a>

## Office Suite

    sudo pacman -S onlyoffice-desktopeditors --noconfirm
    # sudo pacman -S libre-office-still --noconfirm


<a id="org58d763b"></a>

## Rich Text Editor

    sudo pacman -S abiword --noconfirm


<a id="org886011f"></a>

## Diagram Editor

    # sudo pacman -S dia --noconfirm
    flatpak install draw.io


<a id="orged84559"></a>

## Document Viewer

    sudo pacman -S okular --noconfirm


<a id="org50c578d"></a>

## Document Scan

    sudo pacman -S simple-scan --nocomfirm


<a id="org520f97d"></a>

# Other Utilities

    sudo pacman -S ark spectacle uget gestures ventoy --noconfirm

