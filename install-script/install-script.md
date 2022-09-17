
# Table of Contents

1.  [Updating cache & packages](#orgde426dd)
2.  [Package Managers](#org7ddeec7)
    1.  [Homebrew](#org4d868f7)
3.  [System Utilities](#org4add6cf)
    1.  [System info utilities](#orga9e8b77)
    2.  [Finding utilities](#org558b71a)
    3.  [Disk Management Utilities](#org4eaee2a)
4.  [Source Code Management](#orge1f82c7)
5.  [Desktop Manager](#org842a9b8)
6.  [Desktop Environment](#org89330b7)
    1.  [KDE Plasma Desktop](#orgca1d3c7)
    2.  [Other Plasma Utilities](#org8ee68aa)
    3.  [KDE File manager](#orgb1f6b16)
    4.  [ARCH GUI Package manager](#org77dde50)
    5.  [KDE Package Explorer](#orga73f72c)
    6.  [KDE Virtual consoles](#orgcc242f1)
    7.  [KDE Battery manager](#org3ff6fcc)
    8.  [KDE System monitor](#orge98ff83)
7.  [Fonts](#orgf3a97d3)
8.  [Shells](#orga620cad)
9.  [Firewall](#orgef0a03b)
10. [Text Editors](#org1c525eb)
11. [Web Browsers](#orga7d757e)
12. [Languages, Runtime & Development Environment](#org7479056)
    1.  [Most Important](#org1d6aa41)
    2.  [Python](#org005a4f0)
    3.  [Node](#org07a1793)
    4.  [Rust](#orgfcfb2db)
    5.  [Lua](#orgdbf706d)
    6.  [Dotnet](#org40d7d71)
    7.  [Mono](#org5114f78)
    8.  [Go](#orge7183e4)
13. [Game & 3d Modelling](#org263b510)
14. [Audio, Video & Multimedia](#orgcf97315)
    1.  [Photo Viewer & editor](#org3d0d48e)
    2.  [Audio viewer & editor](#org6f72bc7)
    3.  [Video viewer & editor](#orgbec542d)
15. [Virtual Machines & Containers](#org8a696cf)
    1.  [Containers](#org4997854)
    2.  [Virtual Machines](#orgf2292c3)
16. [Office Utilities](#orgf0e59d5)
17. [Other Utilities](#orgb561082)



<a id="orgde426dd"></a>

# Updating cache & packages

    #! /usr/bin/bash
    
    # sudo apt update && sudo apt upgrade -y
    sudo pacman -Syu --noconfirm


<a id="org7ddeec7"></a>

# Package Managers

    sudo pacman -S flatpak appimagelauncher yay --noconfirm


<a id="org4d868f7"></a>

## Homebrew

    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash


<a id="org4add6cf"></a>

# System Utilities

    sudo pacman -S htop glances --noconfirm
    # sudo pacman -S sysstat ifstat --noconfirm


<a id="orga9e8b77"></a>

## System info utilities

    sudo pacman -S neofetch --noconfirm


<a id="org558b71a"></a>

## Finding utilities

    sudo pacman -S fd mlocate --noconfirm


<a id="org4eaee2a"></a>

## Disk Management Utilities

    sudo pacman -S df du --noconfirm


<a id="orge1f82c7"></a>

# Source Code Management

    sudo -S git github-cli --noconfirm


<a id="org842a9b8"></a>

# Desktop Manager

    sudo pacman -S sddm --noconfirm


<a id="org89330b7"></a>

# Desktop Environment


<a id="orgca1d3c7"></a>

## KDE Plasma Desktop

    sudo pacman -S plasma-desktop --noconfirm


<a id="org8ee68aa"></a>

## Other Plasma Utilities

    sudo pacman -S plasma-nm plasma-pa kdeplasma-addons kde-gtk-config --noconfirm


<a id="orgb1f6b16"></a>

## KDE File manager

    sudo pacman -S doplhin --noconfirm


<a id="org77dde50"></a>

## ARCH GUI Package manager

    sudo pacman -S pamac --noconfirm


<a id="orga73f72c"></a>

## KDE Package Explorer

    sudo pacman -S discover --noconfirm


<a id="orgcc242f1"></a>

## KDE Virtual consoles

    sudo pacman -S konsole yakuake --noconfirm


<a id="org3ff6fcc"></a>

## KDE Battery manager

    sudo pacman -S powerdevil --noconfirm


<a id="orge98ff83"></a>

## KDE System monitor

    sudo pacman -S ksysguard --noconfirm


<a id="orgf3a97d3"></a>

# Fonts

    sudo yay -S nerd-fonts-complete
    # sudo pacman -S ttf-cascadia-code ttf-dejavu ttf-fira-code ttf-roboto ttf-roboto-mono noto-fonts noto-fonts-emoji terminus-font --noconfirm


<a id="orga620cad"></a>

# Shells

    # sudo pacman -S sh bash --noconfirm
    sudo pacman -S zsh --noconfirm


<a id="orgef0a03b"></a>

# Firewall

    sudo pacman -S firewall --noconfirm
    # sudo pacman -S ufw gufw --noconfirm


<a id="org1c525eb"></a>

# Text Editors

    sudo pacman -S vim neovim emacs --noconfirm
    # sudo yay -S vscodium-bin


<a id="orga7d757e"></a>

# Web Browsers

    sudo pacman -S firefox --noconfirm
    sudo yay -S google.chrome
    # sudo flatpak install com.google.Chrome -y
    # sudo pacman -S brave chromium --noconfirm


<a id="org7479056"></a>

# Languages, Runtime & Development Environment


<a id="org1d6aa41"></a>

## Most Important

    # sudo pacman -S python nodejs rust go --noconfirm


<a id="org005a4f0"></a>

## Python

    sudo pacman -S python ipython --noconfirm


<a id="org07a1793"></a>

## Node

    sudo pacman -S nodejs --noconfirm


<a id="orgfcfb2db"></a>

## Rust

    sudo pacman -S rustup rust-analyzer --noconfirm


<a id="orgdbf706d"></a>

## Lua

    sudo pacman -S lua luarocks luajit --noconfirm


<a id="org40d7d71"></a>

## Dotnet

    sudo pacman -S dotnet-host dotnet-sdk dotnet-runtime dotnet-targeting-pack --noconfirm


<a id="org5114f78"></a>

## Mono

    sudo pacman -S mono mono-addins --noconfirm


<a id="orge7183e4"></a>

## Go

    sudo pacman -S go --noconfirm


<a id="org263b510"></a>

# Game & 3d Modelling

    sudo pacman -S godot blender freecad --noconfirm


<a id="orgcf97315"></a>

# Audio, Video & Multimedia


<a id="org3d0d48e"></a>

## Photo Viewer & editor

    sudo pacman -S gwenview gimp krita inkscape --noconfirm


<a id="org6f72bc7"></a>

## Audio viewer & editor

    # Video viewing/editing/encoding
    sudo pacman -S vlc kdenlive handbrake --noconfirm


<a id="orgbec542d"></a>

## Video viewer & editor

    # Audio viewing/editing/composition
    sudo pacman -S elias audacity lmms --noconfirm


<a id="org8a696cf"></a>

# Virtual Machines & Containers


<a id="org4997854"></a>

## Containers

    sudo pacman -S docker --noconfirm
    # sudo pacman -S lxc lxd --noconfirm


<a id="orgf2292c3"></a>

## Virtual Machines

    sudo pacman -S virtualbox vagarant --noconfirm
    # sudo pacman -S virt-manager --noconfirm


<a id="orgf0e59d5"></a>

# Office Utilities

    sudo pacman -S okular onlyoffice-desktopeditors --noconfirm
    # sudo pacman -S dia --noconfirm
    # sudo pacman -S simple-scan --noconfirm


<a id="orgb561082"></a>

# Other Utilities

    sudo pacman -S ark spectacle uget gestures ventoy --noconfirm

