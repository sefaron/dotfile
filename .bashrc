#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='\u \w : '
fastfetch

# Colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
RESET="\[\033[0m\]"

# Git branch function
parse_git_branch() {
  git branch 2>/dev/null | grep '\*' | sed 's/* //'
}

# PS1 prompt
export PS1="${GREEN}\u${RESET}@${CYAN}\h${RESET}:${YELLOW}\w${RESET}\
\$(if git rev-parse --is-inside-work-tree &>/dev/null; then echo \" ${MAGENTA}(\$(parse_git_branch))${RESET}\"; fi)\n\$ "
