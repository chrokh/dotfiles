export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


DEFAULT_USER="chris"

# Aliases
alias vi="vim"
alias del="rmtrash"
alias can="rmtrash"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/php5/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/Users/christopherokhravi/bin:/usr/local/mysql-5.5.23-osx10.6-x86/bin:/Users/chris/bin:./node_modules/.bin:$HOME/.rbenv/bin:$PATH

# Add Homebrew's sbin to PATH
export PATH="/usr/local/sbin:$PATH"

# rbenv init
eval "$(rbenv init -)"

# Processing.org short-hand syntax
function pjava {
  if [[ "$1" = /* ]];
  then
    processing-java --sketch="$1" --output=/tmp/processing.org --force --run
  else
    processing-java --sketch=`pwd`/"$1" --output=/tmp/processing.org --force --run
  fi
}


# https://github.com/AuditeMarlow/base16-manager/
base16-manager set materia

# Set locale since R is whining
# https://stackoverflow.com/questions/9689104/installing-r-on-mac-warning-messages-setting-lc-ctype-failed-using-c
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Suggested by install script when installing Haskell using gcup (to put ghc in path)
# https://www.haskell.org/ghcup/
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
