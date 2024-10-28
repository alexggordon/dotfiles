# vs code
mkdir -p "$HOME/Library/Application Support/Code/User/"
ln -s "$HOME/.config/apps/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# sublime
ln -s "$HOME/.config/apps/sublime/" "$HOME/Library/Application Support/Sublime Text/"

# Backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim

# Download Vim plugins.
if [[ "$(command -v vim)" ]]; then
  vim +PlugUpgrade +PlugUpdate +qall
fi
