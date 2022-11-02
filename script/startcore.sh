#!/bin/bash
echo "This script will start Open5Gs."
echo
read -s -p "Press ENTER to continue, or CTRL + C to exit"

echo
echo
echo "**** Starting mmed... ****"
sudo systemctl start open5gs-mmed

echo "**** Starting sgwcd... ****"
sudo systemctl start open5gs-sgwcd

echo "**** Starting smfd... ****"
sudo systemctl start open5gs-smfd

echo "**** Starting amfd... ****"
sudo systemctl start open5gs-amfd

echo "**** Starting sgwud... ****"
sudo systemctl start open5gs-sgwud

echo "**** Starting upfd... ****"
sudo systemctl start open5gs-upfd

echo "**** Starting hssd... ****"
sudo systemctl start open5gs-hssd

echo "**** Starting pcrfd... ****"
sudo systemctl start open5gs-pcrfd

echo "**** Starting nrfd... ****"
sudo systemctl start open5gs-nrfd

echo "**** Starting ausfd... ****"
sudo systemctl start open5gs-ausfd

echo "**** Starting udmd... ****"
sudo systemctl start open5gs-udmd

echo "**** Starting pcfd... ****"
sudo systemctl start open5gs-pcfd

echo "**** Starting nssfd... ****"
sudo systemctl start open5gs-nssfd

echo "**** Starting bsfd... ****"
sudo systemctl start open5gs-bsfd

echo "**** Starting udrd... ****"
sudo systemctl start open5gs-udrd

echo "**** Starting webui... ****"
sudo systemctl start open5gs-webui

echo "**** Starting scpd... ****"
sudo systemctl start open5gs-scpd

echo
echo
echo "Done"
echo "Everything looks good to go!"
