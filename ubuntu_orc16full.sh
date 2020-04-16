#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf orc16full.sh
wget https://raw.githubusercontent.com/ts6aud5vkg/ibm/master/orc16full.sh
chmod 777 orc16full.sh
./orc16full.sh
