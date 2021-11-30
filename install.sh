sudo apt update
sudo apt install ca-certificates wget net-tools gnupg libffi7 libgcc-s1 libstdc++6 -y
sudo wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
sudo echo "deb http://as-repository.openvpn.net/as/debian focal main">/etc/apt/sources.list.d/openvpn-as-repo.list
sudo apt update
sudo apt install openvpn-as -y
sudo mkdir -p /dev/net
sudo mknod /dev/net/tun c 10 200
sudo cat /usr/local/openvpn_as/etc/as.conf
