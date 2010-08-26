#!/bin/bash

umask 0077

# colors for ls, etc.
alias ls="ls --color=auto"
alias yaourt="yaourt --lightbg"

# tmux
alias tmux="tmux -2"
alias rnw="tmux rename-window"

if [ "$HOSTNAME" = 's040391' ]; then
  alias sshfs_mercurius="sshfs bram@mercurius:/home/bram /home/bram/mnt"
  alias sshfs_mercurius_remote="sshfs bram@mercurius.home.dyndns.org:/home/bram /home/bram/mnt"
elif [ "$HOSTNAME" = 'mercurius' ]; then
  alias sshfs_laptop="sshfs bram@laptop /home/bram/mnt"
fi

export EDITOR=vim

# Bash completion
[ -f /etc/bash_completion ] && . /etc/bash_completion

# Prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

is19()
{
        local COUNT=`echo $1 | sed -e 's/ij/i/g' | wc -c`
	if [ "$COUNT" == '20' ]; then
		echo "Ja"
	else
		echo "Nee ($(($COUNT-1)))"
	fi
}
