# DistributedStorage
This is the repository for the distributed storage layer. We currently use IPFS.

## Scripts

For details, please refer to https://cluster.ipfs.io/guides/quickstart/

0_install.sh - installs ipfs, go, and ipfs cluster

1_init.sh - initiate ipfs cluster secret

2_start_node0.sh - starts the first node

3_start_other.sh - starts a node and joins the first node

To stop a cluster:

ipfs-cluster-ctl peers rm <peer id>



