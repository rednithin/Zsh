#!/bin/zsh
## LOADING
source ~/.zplug/init.zsh


## FEATURES
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"


## PLUGINS
# zplug "plugins/git", from:oh-my-zsh


## THEMES
#zplug "denysdovhan/spaceship-prompt", from:github, as:theme, defer:3
zplug "oskarkrawczyk/honukai-iterm-zsh", from:github, as:theme, defer:3
# zplug "themes/robbyrussell", from:oh-my-zsh

# zplug "mafredri/zsh-async", from:github, defer:0
# zplug "sindresorhus/pure", use:pure.zsh, as:theme


## INSTALL EXTENSIONS
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi


## LOAD
# zplug load --verbose
zplug load
