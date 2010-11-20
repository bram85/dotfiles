#!/bin/bash

umask 0077

# colors for ls, etc.
alias ls="ls --color=auto"

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

# Default to Dutch
export LANG=nl_NL.UTF-8

# Prompt
[ "$HOSTNAME" = 's040391' ] || export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

# Python documentation
export PYTHONDOCS=/usr/share/doc/python/html/

# KDE Home
export KDEHOME=/home/bram/.kde4

# Debian stuff
export DEBEMAIL=debian@bramschoenmakers.nl
export DEBFULLNAME="Bram Schoenmakers"

is19()
{
        local COUNT=`echo $1 | sed -e 's/ij/i/g' | wc -c`
	if [ "$COUNT" == '20' ]; then
		echo "Ja"
	else
		echo "Nee ($(($COUNT-1)))"
	fi
}

fullPath()
{
  find "$(pwd)" -maxdepth 1 -name "$1"
}

asdf()
{
  setxkbmap dvorak
  xmodmap ~/.Xmodmap
}

aoeu()
{
  setxkbmap us
  xmodmap ~/.Xmodmap
}
