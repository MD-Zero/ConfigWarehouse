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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll="LC_COLLATE=C ls -Al --color=auto --group-directories-first"
alias ..="cd .."
alias tree="tree -aCF --dirsfirst -I 'node_modules|.git'"

# Golang
export GOPATH="$HOME/Projects/go"
export PATH="$PATH:$(go env GOPATH)/bin"

alias cdc="cd $GOPATH/src/gitlab.com/maad-5/dumbcore"
alias cdu="cd $GOPATH/src/gitlab.com/maad-5/dumbui"

# Fancy prompt
export PS1="╭─(\[$(tput setaf 3)\]\t\[$(tput sgr0)\]) \w\n╰─\$ "
