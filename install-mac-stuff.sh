#!/usr/bin/env bash

# Link up qutebrowser config
mkdir -p ~/Library/Preferences/qutebrowser
ln qutebrowser/autoconfig.yml ~/Library/Preferences/qutebrowser

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zsh
brew install zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
chsh -s "$(which zsh)"

# Link up zsh config
ln .zshrc ~/
touch ~/.zhsrc-local
