#!/usr/bin/env bash

# terminal
export TERM=xterm-256color

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias l='ls -F --color=always --show-control-chars'
alias ll='l -lAh --time-style=long-iso'
alias less='less -RMiS'
alias v='vim'
alias g='git'
alias sudo='sudo -E '
alias relogin='exec $SHELL -l'
if which brew >/dev/null; then
	alias brew='env PATH=${PATH/\/Users\/*\/\.anyenv\/envs\/phpenv\/shims:} brew'
fi

# gnu
if [ -d /usr/local/opt/coreutils/libexec/gnubin ] && [ -d /usr/local/opt/coreutils/libexec/gnuman ]; then
	export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
	export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

# anyenv
if [ -d $HOME/.anyenv ]; then
	export PATH="$HOME/.anyenv/bin:$PATH"
	eval "$(anyenv init -)"
fi

# git
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
	# gitコマンドのエイリアスでも自動補完できるようにする
	__git_complete g __git_main
else
	echo 'Please through the path of `git-completion.bash`, if you will use gitcli.'
fi

git_ps1=''
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWUPSTREAM=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	GIT_PS1_SHOWSTASHSTATE=true
	git_ps1="\[\e[0;33m\]\$(__git_ps1)\[\e[00m\]"
else
	echo 'Please through the path of `git-prompt.sh`, if you will use gitcli.'
fi

# prompt
PS1="\[\e[0;32m\]\u@\h\[\e[00m\] \[\e[0;36m\]\w\[\e[00m\]$git_ps1 \$ "
