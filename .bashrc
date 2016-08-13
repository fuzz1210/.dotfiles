# .bashrc

## aliases
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls -F --color=auto --show-control-chars'
alias ll='l -lAh --time-style=long-iso'
alias v='vim'
alias g='git'
alias brew='env PATH=${PATH/\/Users\/*\/\.anyenv\/envs\/phpenv\/shims:} brew'

## gnu
if [ -d /usr/local/opt/coreutils/libexec/gnubin ] && [ -d /usr/local/opt/coreutils/libexec/gnuman ]; then
	export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
	export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

## git
### git-completion.bash git-prompt.sh
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ] && [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
	source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWUPSTREAM=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	GIT_PS1_SHOWSTASHSTATE=true
fi

### prompt
PS1="\[\e[0;32m\]\u\[\e[00m\]\[\e[1;30m\]@\h\[\e[00m\] \[\e[0;36m\]\w\[\e[00m\]\[\e[0;33m\]\$(__git_ps1)\[\e[00m\] \$ "
