# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim

# Download Vim plugins.
if [[ "$(command -v vim)" ]]; then
  vim +PlugUpgrade +PlugUpdate +qall
fi
