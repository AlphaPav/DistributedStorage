# Find the public ip address
# Generate the cluster secret
# Write the configurations into init.config

cat > init.config <<EOF
node0_ip=$(curl http://icanhazip.com)
node0_port=9096
cluster_secret=$(od  -vN 32 -An -tx1 /dev/urandom | tr -d ' \n')
EOF
. init.config
echo "node0 ip: $node0_ip"
echo "node0 port: $node0_port"
echo "cluster secret: $cluster_secret"