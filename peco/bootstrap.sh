#!/bin/bash

wget https://github.com/peco/peco/releases/download/v0.3.3/peco_linux_amd64.tar.gz
tar xzvf peco_linux_amd64.tar.gz 
mv peco_linux_amd64/peco /usr/local/bin
peco --version
