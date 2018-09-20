#!/usr/bin/env bash

# Installing go
echo "--- Start Installing Go ---"
cd $HOME/ && wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz
tar -xvf go1.11.linux-amd64.tar.gz
mkdir -p $HOME/gopath
echo "export GOPATH=\$HOME/gopath" >> ~/.bash_profile
echo "export GOROOT=\$HOME/go" >> ~/.bash_profile
echo "export PATH=\$PATH:\$GOROOT/bin" >> ~/.bash_profile
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.bash_profile
source ~/.bash_profile
go env
echo "--- Finished Installing Go ---"