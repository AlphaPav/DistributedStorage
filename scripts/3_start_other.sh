# Load configurations
. init.config
echo "node0 ip: $node0_ip"
echo "node0 port: $node0_port"
echo "cluster secret: $cluster_secret"

# Init configuration files
export CLUSTER_SECRET=$cluster_secret
ipfs-cluster-service init

# Run ipfs-cluster-service
ipfs-cluster-service daemon --bootstrap /ip4/$node0_ip/tcp/$node0_port/ipfs/$cluster_secret

# Print cluster status
echo $(ipfs-cluster-ctl peers ls)