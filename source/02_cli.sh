# setup zsh prompt 
autoload -Uz promptinit && promptinit

# source antidote
source $DOTFILES/vendor/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

eval "$(starship init zsh)"

prompt starship $ZSH_THEME
