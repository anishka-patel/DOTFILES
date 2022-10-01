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
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.GodotMono:$HOME/.emacs.d/bin:$HOME/.local/bin:$HOME/go/bin"
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -t"

alias code=codium
alias vi=vim
alias nv=nvim
alias lv=lvim
alias es=emacs
alias ec=emacsclient
alias gec="emacsclient -c -a emacs&"
alias tec="emacsclient -t"

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

neofetch
