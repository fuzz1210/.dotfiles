# .bash_profile



## environment variables

### gnu
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

### phpenv
# phpenv内でrbenvを使用しているため、オリジナルのrbenvよりも後にパスが通ってる状態にする
export PATH="$HOME/.phpenv/bin:$PATH"
if which phpenv > /dev/null; then eval "$(phpenv init -)"; fi

### rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi



## bashrc
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi
