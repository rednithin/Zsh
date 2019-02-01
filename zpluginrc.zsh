ZPLUGIN_FOLDER="${HOME}/.zplugin"

if [ ! -d $ZPLUGIN_FOLDER ]; then
   echo "Downloading"
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

### Added by Zplugin's installer
source '/home/nithin/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

# zplugin ice wait"0" lucid
zplugin snippet OMZ::lib/completion.zsh

zplugin snippet OMZ::lib/key-bindings.zsh
# zplugin snippet OMZ::lib/git.zsh
# zplugin snippet OMZ::lib/theme-and-appearance.zsh
# zplugin snippet OMZ::plugins/git/git.plugin.zsh
# zplugin cdclear -q # <- forget completions provided up to this moment

zplugin ice wait"0" blockf lucid
zplugin load zsh-users/zsh-completions

zplugin ice wait"0" atload"_zsh_autosuggest_start" lucid
zplugin load zsh-users/zsh-autosuggestions

zplugin ice wait"1" lucid
zplugin load djui/alias-tips

zplugin ice wait"1" pick"yank" as"program" lucid
zplugin load mptre/yank

# zplugin ice from"gh-r" as"program"
# zplugin light junegunn/fzf-bin
 
# zplugin light zdharma/zui
# zplugin ice wait'[[ -n ${ZLAST_COMMANDS[(r)cras*]} ]]' lucid
# zplugin light zdharma/zplugin-crasis

zplugin light denysdovhan/spaceship-prompt
# zplugin snippet https://github.com/oskarkrawczyk/honukai-iterm-zsh/blob/master/honukai.zsh-theme



zplugin ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
zplugin load zsh-users/zsh-syntax-highlighting
# zplugin load zdharma/fast-syntax-highlighting

zplugin ice wait"0" lucid
zplugin snippet OMZ::plugins/globalias/globalias.plugin.zsh