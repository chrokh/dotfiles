# Git
alias g="git"
alias gst="git status"
alias gd="git diff"
alias gc="git commit"
alias gco="git checkout"
alias gp="git push"
alias gl="git pull"
alias ga="git add"
alias glog='git log --oneline --decorate --graph'

alias l="ls -la"

function take {
  mkdir $1
  cd $1
}

# Alias xdg-open if it exists
command -v xdg-open && alias open=xdg-open

# Tree visuals
# Originally from:
# http://reviews.cnet.com/8301-13727_7-10402034-263.html
# Modified to ignore git, ds_store and contents of tmp
function tree {
  ls -Ra $1 | grep -v ".git/." | grep -v "tmp/." | grep -v ".DS_Store"  | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
}

# Editor of choice
export EDITOR="vim"

# Set default options for less
# This e.g. makes git diffs always paginate
export LESS=iRc

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
  [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
    source "$BASE16_SHELL/profile_helper.sh"

# Default theme
base16_dracula
