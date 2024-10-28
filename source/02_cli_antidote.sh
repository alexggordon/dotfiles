# setup zsh prompt 
autoload -Uz promptinit && promptinit

# source antidote
source $DOTFILES/vendor/antidote/antidote.zsh

prompt starship $ZSH_THEME

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load