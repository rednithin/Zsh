#!/bin/zsh
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# autoload -Uz compinit
# typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
# if [ $(date +'%j') != $updated_at ]; then
#   compinit -i
# else
#   compinit -C -i
# fi


source ~/Zsh/variables.zsh

# Antigen
autoload -Uz compinit && compinit
source ~/Zsh/plugins.zsh

# source ~/Zsh/zgenrc.zsh
# source ~/Zsh/zplugrc.zsh
# source ~/Zsh/zpluginrc.zsh

source ~/Zsh/aliases.zsh
source ~/Zsh/path.zsh
source ~/Zsh/source.zsh