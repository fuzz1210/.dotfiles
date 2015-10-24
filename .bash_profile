# .bash_profile



## environment variables

### gnu
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

### rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### prompt
export PS1="\[\e[0;32m\]\u\[\e[00m\]\[\e[1;30m\]@\h\[\e[00m\] \[\e[0;36m\]\w\[\e[00m\]\[\e[0;33m\]$(__git_ps1)\[\e[00m\] \$ "



## bashrc
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi
