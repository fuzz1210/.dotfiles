# .bash_profile



## environment variables

### gnu
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

### anyenv
if [ -d $HOME/.anyenv ]; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

## bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
