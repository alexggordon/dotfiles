# vs code
ln -sf ".config/apps/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# sublime
ln -sf ".config/apps/sublime/" "$HOME/Library/Application Support/Sublime Text/"

# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim

# Download Vim plugins.
if [[ "$(command -v vim)" ]]; then
  vim +PlugUpgrade +PlugUpdate +qall
fi
