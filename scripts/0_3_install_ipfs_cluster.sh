#!/usr/bin/env bash

# Initialize ipfs-cluster
echo "--- Start installing ipfs cluster ---"
git clone https://github.com/ipfs/ipfs-cluster.git $GOPATH/src/github.com/ipfs/ipfs-cluster
cd $GOPATH/src/github.com/ipfs/ipfs-cluster
make install
echo "--- Finished installing ipfs cluster ---"