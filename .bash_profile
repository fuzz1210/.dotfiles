# プロンプト
PS1="-> ----------\n\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]:)\"; else echo \"\[\033[0;31m\]:(\"; fi)\[\033[00m\] \u \[\e[0;36m\]\w\[\e[m\] \$ "


# coreutils : gnuのコマンド
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"


# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# コマンドのエイリアス
alias ls='ls -AFl --color'


# bashrc
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi
