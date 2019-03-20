# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

shopt -s globstar

export PROMPT_DIRTRIM=3

# Example prompt:
# [04:31 PM] ~/git-project [(26f7500e...)]
# $ _
export PS1='\n\e[38;5;179m[\@] \[\033[01;33m\]\w \[\033[35m\]$(__git_ps1 "[%s]") \[\033[0m\]\n\$ '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias cls='clear'

if [ -f $HOME/.bashrc.local ]; then
    . $HOME/.bashrc.local
fi
