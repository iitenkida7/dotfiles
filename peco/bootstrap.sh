#!/bin/bash

#https://developers.eure.jp/event/peco_anyframe_zsh/


wget https://github.com/peco/peco/releases/download/v0.3.3/peco_linux_amd64.tar.gz -P /tmp
cd /tmp
tar xzvf peco_linux_amd64.tar.gz 
sudo mv peco_linux_amd64/peco /usr/local/bin
peco --version
