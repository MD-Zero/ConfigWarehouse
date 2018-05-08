#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#

# Global .bashrc file.
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth:erasedups

# Append to the history file, don't overwrite it.
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Enable bash completion in interactive shells.
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# Fancy prompt.
export PS1="╭[\[$(tput setaf 4)\]\w\[$(tput sgr 0)\]]\n╰[\u@\h] \$ "
