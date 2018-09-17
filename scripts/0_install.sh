#!/usr/bin/env bash
# Installing go
cd $HOME/ && wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz
tar -xvf go1.11.linux-amd64.tar.gz
mkdir $HOME/gopath
echo "export GOPATH=\$HOME/gopath" >> .bashrc
echo "export GOROOT=\$HOME/go" >> .bashrc
echo "export PATH=\$PATH:\$GOROOT/bin" >> .bashrc
source ~/.bashrc

# Install IPFS
go get -u github.com/ipfs/ipfs-update
ipfs-update install latest
ipfs init

# Initialize ipfs-cluster
git clone https://github.com/ipfs/ipfs-cluster.git $GOPATH/src/github.com/ipfs/ipfs-cluster
cd $GOPATH/src/github.com/ipfs/ipfs-cluster
make install
