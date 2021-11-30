apt update
apt install ca-certificates wget net-tools gnupg -y
wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
echo "deb http://as-repository.openvpn.net/as/debian focal main">/etc/apt/sources.list.d/openvpn-as-repo.list
apt update
apt install openvpn-as -y
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
cat /usr/local/openvpn_as/etc/as.conf
