echo "======Starting setup squid proxy ubuntu======"

sudo apt update
sudo apt install squid -y
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.original
sudo cp /dev/null /etc/squid/squid.conf
sudo cp ./squid_template.conf /etc/squid/squid.conf
sudo apt install vim -y
sudo vim /etc/squid/squid.conf
sudo service squid restart
sudo ckconfig squid on

echo "End."
