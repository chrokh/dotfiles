# Up/down keys searches history with what's already typed, instead of simply
# stepping through the history.
# https://stackoverflow.com/questions/1030182/how-do-i-change-bash-history-completion-to-complete-whats-already-on-the-line
if [[ $- == *i* ]]
then
  bind '"\e[A": history-search-backward'
  bind '"\e[B": history-search-forward'
fi

