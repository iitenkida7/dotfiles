#!/bin/bash

#cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
#cask list
brew cask install iterm2 
#cask list end
brew cask cleanup

brew install tmux
brew install wget
brew install vim
brew install zsh
brew install jq
brew install curl

#brew cleanup
#brew cask clenup
