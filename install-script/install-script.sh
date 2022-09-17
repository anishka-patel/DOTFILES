#! /usr/bin/bash

# sudo apt update && sudo apt upgrade -y
sudo pacman -Syu --noconfirm

sudo pacman -S flatpak appimagelauncher yay --noconfirm

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

sudo pacman -S htop glances --noconfirm
# sudo pacman -S sysstat ifstat --noconfirm

sudo pacman -S neofetch --noconfirm

sudo pacman -S fd mlocate --noconfirm

sudo pacman -S df du --noconfirm

sudo -S git github-cli --noconfirm

sudo pacman -S sddm --noconfirm

sudo pacman -S plasma-desktop --noconfirm

sudo pacman -S plasma-nm plasma-pa kdeplasma-addons kde-gtk-config --noconfirm

sudo pacman -S doplhin --noconfirm

sudo pacman -S pamac --noconfirm

sudo pacman -S discover --noconfirm

sudo pacman -S konsole yakuake --noconfirm

sudo pacman -S powerdevil --noconfirm

sudo pacman -S ksysguard --noconfirm

sudo yay -S nerd-fonts-complete
# sudo pacman -S ttf-cascadia-code ttf-dejavu ttf-fira-code ttf-roboto ttf-roboto-mono noto-fonts noto-fonts-emoji terminus-font --noconfirm

# sudo pacman -S sh bash --noconfirm
sudo pacman -S zsh --noconfirm

sudo pacman -S firewall --noconfirm
# sudo pacman -S ufw gufw --noconfirm

sudo pacman -S vim neovim emacs --noconfirm
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

sudo pacman -S okular onlyoffice-desktopeditors --noconfirm
# sudo pacman -S dia --noconfirm
# sudo pacman -S simple-scan --noconfirm

sudo pacman -S ark spectacle uget gestures ventoy --noconfirm
