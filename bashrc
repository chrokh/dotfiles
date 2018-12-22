# Relative loading from:
# https://stackoverflow.com/questions/6659689/referring-to-a-file-relative-to-executing-script
source "${BASH_SOURCE%/*}/bash/env"
source "${BASH_SOURCE%/*}/bash/config"
source "${BASH_SOURCE%/*}/bash/aliases"

# Solving RVM is not a function
# http://stackoverflow.com/questions/8663936/how-do-i-change-my-ruby-version-using-rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

