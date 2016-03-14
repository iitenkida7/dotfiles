#!/bin/bash

#cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
#cask list
brew cask install iterm2 
brew cask install remote-desktop-connection 
brew cask install virtualbox
brew cask install clipy
brew-cask install skitch
brew-cask install evernote

#maindMap
brew cask install  xmind
#cask list end

brew cask cleanup

brew install tmux
brew install wget
brew install vim
brew install zsh
brew install jq
brew install curl
brew install docker boot2docker
brew install  mysql
brew install  nkf
#brew cleanup
#brew cask clenup
