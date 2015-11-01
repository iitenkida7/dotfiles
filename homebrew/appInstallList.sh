#!/bin/bash

#cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
#cask list
brew cask install iterm2 
brew cask install remote-desktop-connection 
brew cask install virtualbox
#cask list end
brew cask cleanup

brew install tmux
brew install wget
brew install vim
brew install zsh
brew install jq
brew install curl
brew install docker boot2docker

#brew cleanup
#brew cask clenup
