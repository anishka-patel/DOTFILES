#! /usr/bin/bash

# sudo apt update && sudo apt upgrade -y
# sudo dnf update
# sudo apk update
sudo pacman -Syu --noconfirm

sudo pacman -S flatpak appimagelauncher yay --noconfirm

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo pacman -S htop glances --noconfirm
# sudo pacman -S sysstat ifstat --noconfirm

sudo pacman -S neofetch --noconfirm

sudo pacman -S fd mlocate --noconfirm

sudo pacman -S ncdu df du --noconfirm

sudo -S git github-cli --noconfirm

sudo pacman -S sddm --noconfirm

sudo pacman -S plasma-desktop --noconfirm

sudo pacman -S plasma-nm plasma-pa kdeplasma-addons kde-gtk-config --noconfirm

sudo pacman -S doplhin --noconfirm

sudo pacman -S powerdevil --noconfirm

sudo pacman -S pamac --noconfirm

sudo pacman -S konsole yakuake --noconfirm

sudo pacman -S discover --noconfirm

sudo yay -S nerd-fonts-complete
# sudo pacman -S ttf-cascadia-code ttf-dejavu ttf-fira-code ttf-roboto ttf-roboto-mono noto-fonts noto-fonts-emoji terminus-font --noconfirm

# sudo pacman -S sh bash --noconfirm
sudo pacman -S zsh fish --noconfirm

sudo pacman -S firewall --noconfirm
# sudo pacman -S ufw gufw --noconfirm

sudo pacman -S neovim emacs --noconfirm
# sudo pacman -S vi vim --noconfirm
# sudo yay -S vscodium-bin

sudo pacman -S firefox --noconfirm
sudo flatpak install com.google.Chrome -y
# sudo pacman -S brave chromium --noconfirm
# sudo yay -S google.chrome --noconfirm

sudo pacman -S python nodejs rust go --noconfirm

sudo pacman -S python ipython --noconfirm

sudo pacman -S nodejs --noconfirm

sudo pacman -S rustup rust-analyzer --noconfirm

sudo pacman -S lua luarocks luajit --noconfirm

sudo pacman -S dotnet-host dotnet-sdk dotnet-runtime dotnet-targeting-pack --noconfirm

sudo pacman -S mono mono-addins --noconfirm

sudo pacman -S go --noconfirm

sudo pacman -S godot blender freecad --noconfirm

sudo pacman -S gimp krita inkscape --noconfirm
# sudo pacman -S gwenview --noconfirm

sudo pacman -S vlc elias kdenlive --noconfirm
# sudo pacman -S audacity lmms handbrake --noconfirm

sudo pacman -S docker virtualbox vagrant --noconfirm
# sudo pacman -S lxc lxd --noconfirm

sudo pacman -S virtualbox vagarant --noconfirm
# sudo pacman -S virt-manager --noconfirm

sudo pacman -S okular onlyoffice-desktopeditors --noconfirm
# sudo pacman -S dia --noconfirm
# sudo pacman -S skanlite --noconfirm

sudo pacman -S spectacle uget gestures ventoy --noconfirm
