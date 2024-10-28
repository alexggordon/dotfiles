# Initialize rbenv.
source $DOTFILES/source/50_ruby.sh

# Install Ruby.
if [[ "$(command -v rbenv)" ]]; then
  versions=(3.3.5)

  rubies=($(setdiff "${versions[*]}" "$(rbenv whence ruby)"))
  if (( ${#rubies[@]} > 0 )); then
    e_header "Installing Ruby versions: ${rubies[*]}"
    for r in "${rubies[@]}"; do
      rbenv install "$r"
      [[ "$r" == "${versions[0]}" ]] && rbenv global "$r"
    done
  fi
fi
