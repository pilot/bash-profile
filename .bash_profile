# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# langs
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# with git branch prompt
PS1="\[\e[0;40;32m\u\e[0m@\e[0;40;36m\h\e[0m:\e[01;47;30m\] \w\e[0m \$(git branch 2>/dev/null | grep '^*' | colrm 1 2) \n⚡ "

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# editors
export EDITOR='vim'
export GIT_EDITOR='vim'

# console colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# aliases
alias l='ls -lh'
alias ll='ls -lha'
alias ..='cd ..'
alias ...='cd ../..'
alias cdd='cd -'

alias cp='cp -v'
alias mv='mv -v'
alias ln='ln -v'
alias rm='rm -v'
alias vi='vim'
alias mvi='mvim'

function manview {
    man -t $1 | open -f -a /Applications/Preview.app
}

function take {
    mkdir $1
    cd $1
}

alias pu='phpunit --colors'

# symfony 2
alias pac='php app/console --ansi'
alias srm='sudo rm -rf app/cache/*'

alias apachectl='sudo apachectl'
alias mongostart="mongod --config /usr/local/etc/mongod.conf"

# git
alias g='git status -s'
alias ga='git add'
alias gu='git reset HEAD --'
alias gc='git commit -v'

alias gb='git branch -v'
alias gco='git checkout'

alias gs='git diff --stat'
alias gd='git diff'
alias gdc='git diff --cached'
alias gt='git difftool'
alias gtc='git difftool --cached'

alias gl='git log --oneline'
alias glg='git log --oneline --graph'

function gg {
   git commit -avm "$*"
}

alias phpserver='sudo php -S localhost:80 -t web/'

alias wkhtmltopdf="/usr/local/bin/wkhtmltopdf"
