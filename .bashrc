# .bashrc



## aliases
alias ls='ls -AFl --color'
alias v='vim'
alias g='git'



## git

### git-completion.bash git-prompt.sh
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true

### aliases
# .gitconfig に依存する
alias gcf='git cf'
alias gcfg='git cfg'
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
