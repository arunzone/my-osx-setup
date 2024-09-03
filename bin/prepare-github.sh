#!/bin/bash

sudo rm -rfv /Users/runner/Library/Android/sdk

brew remove --force $(brew list --formula) &&

brew remove --cask --force $(brew list) &&

brew update && brew upgrade && brew upgrade --cask &&

brew autoremove

brew doctor

brew install python@3.11

brew link --overwrite python@3.11

brew install pipx

pipx install --include-deps ansible
