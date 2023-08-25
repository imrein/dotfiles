# Zsh config
SHELL_DIR=$HOME/.config/shell

## Aliases
source $SHELL_DIR/aliases.sh

## Auto-completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

## Theme

# p10k
source ~/.zsh-theme-powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

unsetopt beep
