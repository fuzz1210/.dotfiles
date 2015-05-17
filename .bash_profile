# prompt 
PS1="\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]:)\"; else echo \"\[\033[0;31m\]:(\"; fi)\[\033[00m\] \u \[\e[0;36m\]\w\[\e[m\] \$ "


# gnu 
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"


# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


# alias 
alias ls='ls -AFl --color'
alias br='brew'
alias brc='brew cask'


# bashrc
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi
