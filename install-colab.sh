apt update
apt install libc6 libffi6 libgcc1 liblz4-1 liblzo2-2 libmariadb3 libpcap0.8 libssl1.1 libstdc++6 zlib1g bridge-utils net-tools libsasl2-2 iproute2 sqlite3 libsqlite3-0 iptables python3-pkg-resources python3-migrate python3-sqlalchemy python3-mysqldb python3-ldap3 -y
wget https://openvpn.net/downloads/openvpn-as-latest-ubuntu18.amd_64.deb
dpkg -i openvpn-as-latest-ubuntu18.amd_64.deb
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
cat /usr/local/openvpn_as/init.log
