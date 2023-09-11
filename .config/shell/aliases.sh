# General
alias ll="eza -lh"
alias lla="eza -lha"
alias dns="cat /etc/resolv.conf | grep nameserver"
alias cat="bat --style grid"
alias dust="du -sh * | sort -hr"
alias ..="cd .."

alias ippub="curl https://ipv4.wtfismyip.com/text"

# Editors
alias vim="nvim"
alias code="vscodium"

# Git
alias gitup="git pull --rebase; git submodule --quiet sync; git submodule update --init"
alias gitmass="for dir in *; do if [ -d $dir/.git ]; then cd $dir && git pull --rebase; git submodule --quiet sync; git submodule update --init && cd ..; fi; done"
