
# Table of Contents

1.  [Updating cache & packages](#org68a9e7d)
2.  [Package Managers](#orgff28f35)
    1.  [Homebrew](#orgd878cf7)
3.  [System Utilities](#org8b71b3e)
    1.  [System info utilities](#orgb01bdad)
    2.  [Finding utilities](#org5cd3bf9)
    3.  [Disk Management Utilities](#org12fd7f7)
4.  [Source Code Management](#org1749b4b)
5.  [Desktop Manager](#org01d790a)
6.  [Desktop Environment](#org7917c48)
    1.  [KDE Plasma Desktop](#org599dd4f)
    2.  [Other Plasma Utilities](#org958a32c)
    3.  [KDE File manager](#orge3d6a15)
    4.  [KDE Battery manager](#orgd38bc0f)
    5.  [ARCH GUI Package manager](#org980eaae)
    6.  [KDE Virtual consoles](#org1601ba3)
    7.  [KDE Package Explorer](#orga48ec43)
7.  [Fonts](#org25dc8dd)
8.  [Shells](#org35726a1)
9.  [Firewall](#orgf648bed)
10. [Text Editors](#org40917f1)
11. [Web Browsers](#org11b74e6)
12. [Languages, Runtime & Development Environment](#org7e5179a)
    1.  [Most Important](#orgda94744)
    2.  [Python](#org072a325)
    3.  [Node](#orgfd9752d)
    4.  [Rust](#org9c6fd5b)
    5.  [Lua](#org812ead0)
    6.  [Dotnet](#org3109f63)
    7.  [Mono](#orgeae31d4)
    8.  [Go](#orgc675e11)
13. [Game & 3d Modelling](#org764b671)
14. [Audio, Video & Multimedia](#org222055f)
    1.  [Photo Viewer & editor](#org29f49fe)
    2.  [Multimedia viewer & editor](#org7b5428c)
15. [Virtual Machines & Containers](#orgaa138b5)
    1.  [Containers](#org489131c)
    2.  [Virtual Machines](#org65bd2ae)
16. [Office Utilities](#orgceaedfc)
17. [Other Utilities](#org88ee1cb)



<a id="org68a9e7d"></a>

# Updating cache & packages

    #! /usr/bin/bash
    
    # sudo apt update && sudo apt upgrade -y
    # sudo dnf update
    # sudo apk update
    sudo pacman -Syu --noconfirm


<a id="orgff28f35"></a>

# Package Managers

    sudo pacman -S flatpak appimagelauncher yay --noconfirm


<a id="orgd878cf7"></a>

## Homebrew

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


<a id="org8b71b3e"></a>

# System Utilities

    sudo pacman -S htop glances --noconfirm
    # sudo pacman -S sysstat ifstat --noconfirm


<a id="orgb01bdad"></a>

## System info utilities

    sudo pacman -S neofetch --noconfirm


<a id="org5cd3bf9"></a>

## Finding utilities

    sudo pacman -S fd mlocate --noconfirm


<a id="org12fd7f7"></a>

## Disk Management Utilities

    sudo pacman -S ncdu df du --noconfirm


<a id="org1749b4b"></a>

# Source Code Management

    sudo -S git github-cli --noconfirm


<a id="org01d790a"></a>

# Desktop Manager

    sudo pacman -S sddm --noconfirm


<a id="org7917c48"></a>

# Desktop Environment


<a id="org599dd4f"></a>

## KDE Plasma Desktop

    sudo pacman -S plasma-desktop --noconfirm


<a id="org958a32c"></a>

## Other Plasma Utilities

    sudo pacman -S plasma-nm plasma-pa kdeplasma-addons kde-gtk-config --noconfirm


<a id="orge3d6a15"></a>

## KDE File manager

    sudo pacman -S doplhin --noconfirm


<a id="orgd38bc0f"></a>

## KDE Battery manager

    sudo pacman -S powerdevil --noconfirm


<a id="org980eaae"></a>

## ARCH GUI Package manager

    sudo pacman -S pamac --noconfirm


<a id="org1601ba3"></a>

## KDE Virtual consoles

    sudo pacman -S konsole yakuake --noconfirm


<a id="orga48ec43"></a>

## KDE Package Explorer

    sudo pacman -S discover --noconfirm


<a id="org25dc8dd"></a>

# Fonts

    sudo yay -S nerd-fonts-complete
    # sudo pacman -S ttf-cascadia-code ttf-dejavu ttf-fira-code ttf-roboto ttf-roboto-mono noto-fonts noto-fonts-emoji terminus-font --noconfirm


<a id="org35726a1"></a>

# Shells

    # sudo pacman -S sh bash --noconfirm
    sudo pacman -S zsh fish --noconfirm


<a id="orgf648bed"></a>

# Firewall

    sudo pacman -S firewall --noconfirm
    # sudo pacman -S ufw gufw --noconfirm


<a id="org40917f1"></a>

# Text Editors

    sudo pacman -S neovim emacs --noconfirm
    # sudo pacman -S vi vim --noconfirm


<a id="org11b74e6"></a>

# Web Browsers

    sudo pacman -S firefox --noconfirm
    sudo flatpak install com.google.Chrome -y
    # sudo pacman -S brave chromium --noconfirm
    # sudo yay -S google.chrome --noconfirm


<a id="org7e5179a"></a>

# Languages, Runtime & Development Environment


<a id="orgda94744"></a>

## Most Important

    sudo pacman -S python nodejs rust go --noconfirm


<a id="org072a325"></a>

## Python

    sudo pacman -S python ipython --noconfirm


<a id="orgfd9752d"></a>

## Node

    sudo pacman -S nodejs --noconfirm


<a id="org9c6fd5b"></a>

## Rust

    sudo pacman -S rustup rust-analyzer --noconfirm


<a id="org812ead0"></a>

## Lua

    sudo pacman -S lua luarocks luajit --noconfirm


<a id="org3109f63"></a>

## Dotnet

    sudo pacman -S dotnet-host dotnet-sdk dotnet-runtime dotnet-targeting-pack --noconfirm


<a id="orgeae31d4"></a>

## Mono

    sudo pacman -S mono mono-addins --noconfirm


<a id="orgc675e11"></a>

## Go

    sudo pacman -S go --noconfirm


<a id="org764b671"></a>

# Game & 3d Modelling

    sudo pacman -S godot blender freecad --noconfirm


<a id="org222055f"></a>

# Audio, Video & Multimedia


<a id="org29f49fe"></a>

## Photo Viewer & editor

    sudo pacman -S gimp krita inkscape --noconfirm
    # sudo pacman -S gwenview --noconfirm


<a id="org7b5428c"></a>

## Multimedia viewer & editor

    sudo pacman -S vlc elias kdenlive --noconfirm
    # sudo pacman -S audacity lmms handbrake --noconfirm


<a id="orgaa138b5"></a>

# Virtual Machines & Containers


<a id="org489131c"></a>

## Containers

    sudo pacman -S docker virtualbox vagrant --noconfirm
    # sudo pacman -S lxc lxd --noconfirm


<a id="org65bd2ae"></a>

## Virtual Machines

    sudo pacman -S virtualbox vagarant --noconfirm
    # sudo pacman -S virt-manager --noconfirm


<a id="orgceaedfc"></a>

# Office Utilities

    sudo pacman -S okular onlyoffice-desktopeditors --noconfirm
    # sudo pacman -S dia --noconfirm
    # sudo pacman -S skanlite --noconfirm


<a id="org88ee1cb"></a>

# Other Utilities

    sudo pacman -S spectacle uget gestures ventoy --noconfirm

