#!/bin/bash
echo "........................"
echo "///////////// installing LibSSL1.1"
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb
rm libssl1.1_1.1.1f-1ubuntu2_amd64.deb
echo
echo
echo "///////////// installing mongodb 4.4"
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d
sudo apt update
sudo apt install -y mongodb-org
echo
echo
echo "///////////// restart mongodb"
mv /var/lib/mongodb /var/lib/mongodb_backup
mkdir /var/lib/mongodb
chmod 700 /var/lib/mongodb
chown mongodb:daemon /var/lib/mongodb
systemctl restart mongod
echo
echo "done...."