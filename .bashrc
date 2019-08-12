#!/usr/bin/env bash
readonly BREW_PREFIX=$(brew --prefix)

##############################
# less
#
export LESS='-MRiSW'

##############################
# pager
#
export PAGER=less

##############################
# gnu
#
coreutils_bin=$(brew --prefix coreutils)/libexec/gnubin
coreutils_man=$(brew --prefix coreutils)/libexec/gnuman
if [ -d $coreutils_bin ] && [ -d $coreutils_man ]; then
  export PATH="$coreutils_bin:$PATH"
  export MANPATH="$coreutils_man:$MANPATH"
fi
unset coreutils_bin coreutils_man

findutils_bin=$(brew --prefix findutils)/libexec/gnubin
findutils_man=$(brew --prefix findutils)/libexec/gnuman
if [ -d $findutils_bin ] && [ -d $findutils_man ]; then
  export PATH="$findutils_bin:$PATH"
  export MANPATH="$findutils_man:$MANPATH"
fi
unset findutils_bin findutils_man

grep_bin=$(brew --prefix grep)/libexec/gnubin
grep_man=$(brew --prefix grep)/libexec/gnuman
if [ -d $grep_bin ] && [ -d $grep_man ]; then
  export PATH="$grep_bin:$PATH"
  export MANPATH="$grep_man:$MANPATH"
fi

unset sed_bin sed_man
sed_bin=$(brew --prefix gnu-sed)/libexec/gnubin
sed_man=$(brew --prefix gnu-sed)/libexec/gnuman
if [ -d $sed_bin ] && [ -d $sed_man ]; then
  export PATH="$sed_bin:$PATH"
  export MANPATH="$sed_man:$MANPATH"
fi
unset sed_bin sed_man

##############################
# dircolors
#
dircolors=$HOME/.config/dircolors/dircolors-solarized/dircolors.ansi-universal
if [ -f $dircolors ]; then
  eval $(dircolors $dircolors)
fi
unset dircolors

##############################
# anyenv
#
anyenv_bin=$HOME/.anyenv/bin
if [ -d $anyenv_bin ]; then
  export PATH="$anyenv_bin:$PATH"
  eval "$(anyenv init -)"
fi
unset anyenv_bin

##############################
# Golang
#
export GOPATH=$HOME/.go

##############################
# Git
#
git_ps1=''

git_completion=$BREW_PREFIX/etc/bash_completion.d/git-completion.bash
if [ -f $git_completion ]; then
  . $git_completion
  # gitコマンドのエイリアスでも自動補完できるようにする
  __git_complete g __git_main
else
  echo 'You had better source `git-completion.bash`, if you will use Git CLI.'
fi
unset git_completion

tig_completion=$BREW_PREFIX/etc/bash_completion.d/tig-completion.bash
if [ -f $tig_completion ]; then
  . $tig_completion
else
  echo 'You had better source `tig-completion.bash`, if you will use Git CLI.'
fi
unset tig_completion

git_prompt=$BREW_PREFIX/etc/bash_completion.d/git-prompt.sh
if [ -f $git_prompt ]; then
  . $git_prompt
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUPSTREAM=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWSTASHSTATE=true
  git_ps1="\[\e[0;33m\]\$(__git_ps1)\[\e[00m\]"
else
  echo 'You had better source `git-prompt.sh`, if you will use Git CLI.'
fi
unset git_prompt

diff_highlight=$BREW_PREFIX/share/git-core/contrib/diff-highlight
if [ -f $diff_highlight/diff-highlight ]; then
  export PATH="$diff_highlight:$PATH"
else
  echo 'You had better add the path of `diff-highlight` to PATH, if you will use Git CLI.'
fi
unset diff_highlight

##############################
# prompt
#
PS1="\[\e[0;32m\]\u @ \h\[\e[00m\] \[\e[0;36m\]\w\[\e[00m\]$git_ps1 \$ "
unset git_ps1

##############################
# aliases
#
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias l='ls -lahF --color=always --show-control-chars --time-style=long-iso'
alias v='vim'
alias g='git'
alias sudo='sudo -E '
alias relogin='exec $SHELL -l'
alias prettypath='echo $PATH | tr : "\n"'
alias brewup2='brew update && brew upgrade'
