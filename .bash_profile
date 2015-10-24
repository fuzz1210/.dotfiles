# .bash_profile



## environment variables

### gnu
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

### rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi



## bashrc
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi
