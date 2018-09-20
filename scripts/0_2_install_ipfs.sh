#!/usr/bin/env bash

# Install IPFS
echo "--- Start installing IPFS ---"

go get -u -d github.com/ipfs/go-ipfs
cd $GOPATH/src/github.com/ipfs/go-ipfs
make install
# go get -u github.com/ipfs/ipfs-update
# ipfs-update install latest
ipfs init
echo "--- Finished installing IPFS ---"