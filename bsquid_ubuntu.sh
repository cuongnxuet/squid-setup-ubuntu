echo "======Starting setup squid proxy ubuntu======"

apt update
apt install squid
cp /etc/squid/squid.conf /etc/squid/squid.conf.original
rm -rf /etc/squid/squid.conf
cp ./squid_template.conf /etc/squid/squid.conf
service squid restart
chkconfig squid on

echo "End."

