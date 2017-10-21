#
#     888                        888
#     888                        888
#     888                        888
#     88888b.   8888b.  .d8888b  88888b.  888d888 .d8888b
#     888 "88b     "88b 88K      888 "88b 888P"  d88P"
#     888  888 .d888888 "Y8888b. 888  888 888    888
# d8b 888 d88P 888  888      X88 888  888 888    Y88b.
# Y8P 88888P"  "Y888888  88888P' 888  888 888     "Y8888P
#

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth:erasedups

# Append to the history file, don't overwrite it.
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Set variable identifying the chroot you work in (used in the prompt below).
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable bash completion in interactive shells.
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# Prompt.
PS1="╭(\[$(tput setaf 3)\]\t\[$(tput sgr 0)\])─(\
\[$(tput setaf 4)\]\u\[$(tput sgr 0)\]@\[$(tput setaf 2)\]\h\[$(tput sgr 0)\])─\
(\[$(tput setaf 6)\]\w\[$(tput sgr 0)\])
╰ \$ "
