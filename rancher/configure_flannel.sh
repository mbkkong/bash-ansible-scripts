mkdir -p /etc/cni/net.d
cat > /etc/cni/net.d/10-flannel.conflist <<EOF
{
    "name": "cbr0",
    "plugins": [
        {
            "type": "flannel",
            "delegate": {
                "hairpinMode": true,
                "isDefaultGateway": true
            }
        },
        {
            "type": "portmap",
            "capabilities": {
                "portMappings": true
            }
        }
    ]
}
EOF
