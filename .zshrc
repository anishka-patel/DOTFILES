# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
# Vim mode
bindkey -v
lvim="$HOME/.local/bin/lvim"
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.GodotMono:$HOME/.emacs.d/bin:$HOME/.local/bin"
export EDITOR=nvim
export VISUAR=nvim


alias vi=nvim

neofetch


if [ -e /home/ani/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ani/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
