# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(command -v brew)" ]] && e_error "Brew casks need Homebrew to install." && return 1

# Ensure the cask kegs are installed.
# kegs=(
#   homebrew/cask-fonts
# )
# brew_tap_kegs

# Homebrew casks
casks=(
  # fonts
  font-monaspace

  # Applications
  hex-fiend # hex visualizer
  iterm2
  licecap # record screen directly to gif
  numi # human calculator
  omnidisksweeper
  spotify
  steam
  vlc
  hazel
  chatgpt
  slack
  rectangle
  docker
  datagrip # (no)sql application


  # text editors
  obsidian
  macvim
  sublime-text@dev
  sublime-merge@dev
  visual-studio-code
  
  # Quick Look plugins
  qlcolorcode
  qlmarkdown
  qlstephen
  quicklook-csv
  quicklook-json
  webpquicklook
  suspicious-package
)

# Install Homebrew casks.
casks=($(setdiff "${casks[*]}" "$(brew cask list 2>/dev/null)"))
if (( ${#casks[@]} > 0 )); then
  e_header "Installing Homebrew casks: ${casks[*]}"
  for cask in "${casks[@]}"; do
    brew install --cask $cask
  done
fi
