#!/bin/bash

chsh -s /bin/zsh

export PATH="$PATH:/opt/homebrew/bin/"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&

brew_path=`brew --prefix`

eval "$(/${brew_path}/bin/brew shellenv)" &&

/usr/sbin/softwareupdate --install-rosetta --agree-to-license &&

brew update && brew upgrade && brew upgrade --cask &&

brew doctor || true &&

brew install python@3.11

brew link --overwrite python@3.11

brew install pipx

pipx install --include-deps ansible
