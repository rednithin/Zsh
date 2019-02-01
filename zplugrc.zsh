#!/bin/zsh

ZPLUG_FOLDER="${HOME}/.zplug"

if [ ! -d $ZPLUG_FOLDER ]; then
   echo "Downloading"
   git clone https://github.com/zplug/zplug.git "${HOME}/.zplug"
fi

## LOADING
source ~/.zplug/init.zsh


## FEATURES
zplug "zsh-users/zsh-syntax-highlighting", defer:0
zplug "zsh-users/zsh-history-substring-search", defer:0
zplug "zsh-users/zsh-autosuggestions", defer:0
zplug "zsh-users/zsh-completions", defer:0


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
