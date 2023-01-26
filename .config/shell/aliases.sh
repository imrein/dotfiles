# General
alias ll="exa -lh"
alias lla="exa -lha"
alias dns="cat /etc/resolv.conf | grep nameserver"
alias cat='bat --style grid'
alias dust='du -sh * | sort -hr'
alias ..='cd ..'

# Git
alias gitup='git pull --rebase; git submodule --quiet sync; git submodule update --init'
alias gitmass='/bin/bash /home/rein/Documents/hulp/scripts/gitmass.sh'

