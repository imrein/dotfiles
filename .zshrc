# Zsh config
SHELL_DIR=$HOME/.config/shell

## Aliases
source $SHELL_DIR/aliases.sh

## Auto-completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

## Theme

# Starship
eval "$(starship init zsh)"

# p10k
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

unsetopt beep
