#!/bin/zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_EXPIRE_DUPS_FIRST
setopt PROMPT_SUBST

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

# REPORTTIME=3

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ]; then
    seconds=$(($SECONDS - $timer))
    
    hours=$(($seconds/3600))
    min=$(($seconds/60))
    sec=$(($seconds%60))
    
    if [ "$seconds" -le 60 ]; then
        export RPROMPT="%F{cyan}${sec}s %{$reset_color%}"
    elif [ "$seconds" -le 3600 ]; then
        export RPROMPT="%F{cyan}${min}m${sec}s %{$reset_color%}"
    else
        min=$(($min%60))
        export RPROMPT="%F{cyan}${hours}h${min}m${sec}s %{$reset_color%}"
    fi
  fi
  unset timer
}
