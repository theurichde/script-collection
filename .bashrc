# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# User specific aliases and functions

# Write commands immediately into the bash history
PROMPT_COMMAND='history -a'

# Ignore commands with space at the beginning / Ignore duplicates / erase duplicates
export HISTCONTROL=ignoreboth:erasedups

# Append to history file instead of overwriting
shopt -s histappend

# Number of commands to remember in console
export HISTSIZE=10000

# History Filesize (standard is 500)
export HISTFILESIZE=10000


[ -z "$PS1" ] && return
export PS1="[\t \u@\h \W]\[$(tput sgr0)\] $ "
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

if [ -e .bash_alias ]; then
  source .bash_alias
fi
