# .bashrc



## aliases
alias ll='ls -AFl --color'
alias v='vim'
alias g='git'



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

### aliases
# .gitconfig に依存する
alias gcf='git cf'
alias gcfg='git cfg'
alias gsh='gsh'
alias glg='git lg'
alias glgn='git lgn'
alias gbr='git br'
alias gbra='git bra'
alias gch='git ch'
alias gst='git st'
alias gdf='git df'
alias gdfw='git dfw'
alias gad='git ad'
alias grss='git rss'
alias grsm='git rsm'
alias grsh='git rsh'
alias gcm='git cm'
alias gcma='git cma'
alias gps='git ps'
alias gfc='git fc'
alias gmg='git mg'
alias gpl='git pl'

### prompt
PS1="\[\e[0;32m\]\u\[\e[00m\]\[\e[1;30m\]@\h\[\e[00m\] \[\e[0;36m\]\w\[\e[00m\]\[\e[0;33m\]\$(__git_ps1)\[\e[00m\] \$ "
