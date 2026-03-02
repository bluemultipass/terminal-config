# Install Starship
curl -sS https://starship.rs/install.sh | sh

# Clone Antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote

# Create the config files
touch ~/.zsh_plugins.txt

mkdir -p ~/.config && touch ~/.config/starship.toml
