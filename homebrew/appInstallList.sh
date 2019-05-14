#!/bin/bash

#cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
#cask list
brew cask install clipy
brew cask cleanup
brew install tmux
brew install wget
brew install vim
brew install jq
brew install curl
brew install nkf
brew install telnet
