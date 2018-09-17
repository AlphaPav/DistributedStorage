//install ipfs
cd $HOME
wget https://dist.ipfs.io/go-ipfs/v0.4.14-rc1/go-ipfs_v0.4.14-rc1_linux-amd64.tar.gz
tar xf go-ipfs_v0.4.14-rc1_linux-amd64.tar.gz
sudo mv go-ipfs/ipfs /usr/local/bin/ipfs
ipfs init


//installing go
cd $HOME/ && wget https://storage.googleapis.com/golang/go1.10.1.linux-amd64.tar.gz
tar -xvf go1.10.1.linux-amd64.tar.gz
mkdir $HOME/gopath
echo "export GOPATH=\$HOME/gopath" >> .bashrc
echo "export GOROOT=\$HOME/go" >> .bashrc
echo "export PATH=\$PATH:\$GOROOT/bin" >> .bashrc
source ~/.bashrc


//initialize ipfs-cluster
go get -u -d github.com/ipfs/ipfs-cluster
cd $GOPATH/src/github.com/ipfs/ipfs-cluster
make install
