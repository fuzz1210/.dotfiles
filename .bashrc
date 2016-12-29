#!/usr/bin/env bash

# terminal
export TERM=xterm-256color

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls -F --color=auto --show-control-chars'
alias ll='l -lAh --time-style=long-iso'
alias v='vim'
alias g='git'
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
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ] && [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
	source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWUPSTREAM=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	GIT_PS1_SHOWSTASHSTATE=true
fi

# prompt
ps1="\[\e[0;32m\]\u@\h\[\e[00m\] \[\e[0;36m\]\w\[\e[00m\]"
if type __git_ps1 >/dev/null 2>&1; then
	ps1="$ps1\[\e[0;33m\]\$(__git_ps1)\[\e[00m\]"
else
	echo 'Please path through `git-prompt.sh`, if you use git cli.'
fi
ps1="$ps1 \$ "
PS1=$ps1
