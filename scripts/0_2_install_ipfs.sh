#!/usr/bin/env bash

# Install IPFS
echo "--- Start installing IPFS ---"
go get -u github.com/ipfs/ipfs-update
ipfs-update install latest
ipfs init
echo "--- Finished installing IPFS ---"