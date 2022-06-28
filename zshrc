# BETTER AUTOCOMPLETE
# https://dev.to/rossijonas/how-to-set-up-history-based-autocompletion-in-zsh-k7o
# initialize autocompletion
autoload -U compinit
compinit
# history setup
setopt APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

