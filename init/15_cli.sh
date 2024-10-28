# install starship

mkdir -p ~/.local/bin
curl -sS https://starship.rs/install.sh | sh -s -- -y -b ~/.local/bin

source $DOTFILES/source/02_cli.sh