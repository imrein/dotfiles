# Zsh config
SHELL_DIR=$HOME/.config/shell

export VISUAL="nvim"
export KUBE_EDITOR="nvim"

export LC_ALL=C.UTF-8

## Aliases
source $SHELL_DIR/aliases.sh

## Auto-completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

## Theme
eval "$(starship init zsh)"

## Kube
export KUBECONFIG=/home/rein/.kube/config

## History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

bindkey -e

# p10k
# source ~/.zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

unsetopt beep
