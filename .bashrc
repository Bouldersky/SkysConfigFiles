#
# ~/.bashrc
#
# skyler


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If there is a default location, cd to it
defaultLocation='/tmp/defaultTerminalLocation'
if [ -s $defaultLocation ]; then
    if [ -d `cat $defaultLocation` ]; then
        cd `cat $defaultLocation`;
    fi
fi

if [ $(whoami) == 'root' ]; then
	PS1="\e[95m!\! \e[32m[\T] \e[91m$(whoami)\e[36m@\h \e[31m\w\e[39m\n# "
else
	PS1="\e[95m!\! \e[32m[\T] \e[36m$(whoami)@\h \e[31m\w\e[39m\n# "
fi

set -o vi
shopt -s cdspell

alias ls='ls -F'
alias la='ls -A'
alias lt='ls -t | head'
alias ll='ls -lh'
alias l='ls'
alias g='if [ -s $defaultLocation ]; then if [ -d `cat $defaultLocation` ]; then cd $(cat /tmp/defaultTerminalLocation); fi; fi'
alias dtd="pwd > /tmp/defaultTerminalLocation"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias c='clear'
alias j='jobs'
alias k='kill'

alias src='source ~/.bash_profile'
alias make='make -j 6'

if [ ! -z `command -v htop` ]; then
    alias top=htop
fi

if [ ! -z `command -v pacman` ]; then
    alias pm='sudo pacman'
fi

alias mnv='mvn -T 6'

alias ebrc='vi ~/.bashrc && source ~/.bashrc'
alias clip='pbcopy'
alias paste='pbpaste'
alias pdb='python3 -m pdb'
alias python='python3'
alias tree='tree -C'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias gs='git status'
alias gp='git push'
alias gc='git commit'
alias ga='git add'
alias gb='git branch'
alias gch='git checkout'
alias gl='git log --graph'
alias glo='git log --oneline --graph'
alias gla='git log --oneline --graph --all'
alias gsta='git stash'

alias gchD='git checkout Development'

export PATH="$PATH:/Users/skylerarnold/Developer/flutter/bin:/usr/local/Cellar/openvpn/2.4.7_1/sbin"