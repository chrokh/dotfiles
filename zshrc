export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


DEFAULT_USER="christopherokhravi"

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

# rbenv init
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/php5/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/Users/christopherokhravi/bin:/usr/local/mysql-5.5.23-osx10.6-x86/bin:/Users/chris/bin:./node_modules/.bin:$HOME/.rbenv/bin:$PATH


# Processing.org short-hand syntax
function pjava {
  if [[ "$1" = /* ]];
  then
    processing-java --sketch="$1" --output=/tmp/processing.org --force --run
  else
    processing-java --sketch=`pwd`/"$1" --output=/tmp/processing.org --force --run
  fi
}


# Base16 Shell helper
# Inspired by:
#   http://johnmorales.com/blog/2015/01/09/base16-shell-tmux-vim-color-switching-dead-simple/
# Dependencies:
#   https://github.com/chriskempson/base16-shell
#   https://github.com/chriskempson/base16-vim
export SHELL_COLOR_CONF="$HOME/.bashbg"
export VIM_COLOR_CONF="$HOME/.vimbg"
function theme {
  local default_name="default"
  local default_back="dark"

  local name="${1:-$(echo $default_name)}"
  local back="${2:-$(echo "dark")}"
  local base="$HOME/.config/base16-shell/"
  local prfx="base16-"
  local sufx=".sh"

  local them=${prfx}${name}
  local file=${base}${them}.${back}${sufx}

  # Verbose
  echo "vim"
  echo "  |__ conf        $VIM_COLOR_CONF"
  echo "  |__ theme       $them"
  echo "  |__ background  $back"
  echo "shell"
  echo "  |__ conf        $SHELL_COLOR_CONF"
  echo "  |__ theme       $file"

  # Set bash colors
  echo "source $file" > $SHELL_COLOR_CONF
  source $SHELL_COLOR_CONF

  # Set vim colors
  echo "set background=$back" > $VIM_COLOR_CONF
  echo "colorscheme $them" >> $VIM_COLOR_CONF
}
source $SHELL_COLOR_CONF

