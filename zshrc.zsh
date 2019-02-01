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


source ~/zsh/variables.zsh

# Antigen
autoload -Uz compinit && compinit
source ~/zsh/plugins.zsh

# source ~/zsh/zgenrc.zsh
# source ~/zsh/zplugrc.zsh
# source ~/zsh/zpluginrc.zsh

source ~/zsh/aliases.zsh
source ~/zsh/path.zsh
source ~/zsh/source.zsh