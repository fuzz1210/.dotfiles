# prompt
PS1="\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]:)\"; else echo \"\[\033[0;31m\]:(\"; fi)\[\033[00m\] \u \[\e[0;36m\]\w\[\e[m\] \$ "


# bash-git-prompt
# if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
#     GIT_PROMPT_THEME=Default
#     source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
# fi


# gnu
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"


# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# alias
alias ls='ls -AFl --color'
alias v='vim'
alias g='git'


# bashrc
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi
