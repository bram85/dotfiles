# colors for ls, etc.
alias ls="ls --color=auto"
alias yaourt="yaourt --lightbg"
alias tmux="tmux -2"

# Aliases for valgrind tools
alias callgrind="valgrind --tool=callgrind"
alias cachegrind="valgrind --tool=cachegrind"
alias massif="valgrind --tool=massif"
alias rnw="tmux rename-window"
alias sshfs_mercurius="sshfs bram@mercurius:/home/bram /home/bram/mnt"
alias sshfs_mercurius_remote="sshfs bram@mercurius.home.dyndns.org:/home/bram /home/bram/mnt"

umask 0077

export EDITOR=vim
export PATH=/usr/lib/ccache/bin:$PATH:/home/bram/bin
export CVS_RSH=ssh

# Bash completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

is19()
{
        local COUNT=`echo $1 | sed -e 's/ij/i/g' | wc -c`
	if [ "$COUNT" == '20' ]; then
		echo "Ja"
	else
		echo "Nee ($(($COUNT-1)))"
	fi
}

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

