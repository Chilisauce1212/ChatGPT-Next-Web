dir="$(dirname "$0")"
config=$dir/proxychains.conf
host_ip=$(grep nameserver /etc/resolv.conf | sed 's/nameserver //')
echo "proxying to $host_ip"
cp $dir/proxychains.template.conf $config 
sed -i "\$s/.*/socks5 127.0.0.1 7890/" $config
