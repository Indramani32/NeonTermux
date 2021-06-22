# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands


shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

printf '\e[4 q'

PS1="
\[\033[0;31m\]┌──╼[\[\033[1;34m\]\[\e[0;32m\]\w\[\e[0m\]\[\033[1;31m\]]
\[\033[0;31m\]└──╼ \[\e[1;31m\]❯\[\e[1;34m\]❯\[\e[1;90m\]❯\[\033[95m\]"

