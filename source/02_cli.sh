# setup zsh prompt 

# source antidote
source $DOTFILES/vendor/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

eval "$(starship init zsh)"

# must be done after the above
autoload -Uz promptinit && promptinit

export ZSH_THEME=zephyr
prompt starship $ZSH_THEME
