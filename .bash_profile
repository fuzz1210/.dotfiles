# .bash_profile

### anyenv
if [ -d $HOME/.anyenv ]; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

## bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
