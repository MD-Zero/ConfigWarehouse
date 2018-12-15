# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
        . /etc/bash_completion
fi

# Alias definitions
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth:erasedups

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS
shopt -s checkwinsize

# User specific environment
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# Go
export GOPATH="$HOME/Workspace/go"
export PATH="$PATH:$(go env GOPATH)/bin"

# Fancy prompt.
export PS1="╮╭─ \w\n╯╰─ \t ─ \$ "
