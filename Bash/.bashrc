# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Golang
export GOPATH="$HOME/.go"
export PATH="$PATH:$(go env GOPATH)/bin"

# Commands history
export HISTCONTROL=ignoreboth:erasedups

# Fancy prompt
export PS1="╭─(\[$(tput setaf 3)\]\t\[$(tput sgr0)\]) \w\n╰─\$ "
