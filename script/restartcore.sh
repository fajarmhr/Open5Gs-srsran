#!/bin/bash
echo "This script will restart Open5Gs."
echo
read -s -p "Press ENTER to continue, or CTRL + C to exit"

echo
echo
echo "**** Restarting mmed... ****"
sudo systemctl restart open5gs-mmed

echo "**** Restarting sgwcd... ****"
sudo systemctl restart open5gs-sgwcd

echo "**** Restarting smfd... ****"
sudo systemctl restart open5gs-smfd

echo "**** Restarting amfd... ****"
sudo systemctl restart open5gs-amfd

echo "**** Restarting sgwud... ****"
sudo systemctl restart open5gs-sgwud

echo "**** Restarting upfd... ****"
sudo systemctl restart open5gs-upfd

echo "**** Restarting hssd... ****"
sudo systemctl restart open5gs-hssd

echo "**** Restarting pcrfd... ****"
sudo systemctl restart open5gs-pcrfd

echo "**** Restarting nrfd... ****"
sudo systemctl restart open5gs-nrfd

echo "**** Restarting ausfd... ****"
sudo systemctl restart open5gs-ausfd

echo "**** Restarting udmd... ****"
sudo systemctl restart open5gs-udmd

echo "**** Restarting pcfd... ****"
sudo systemctl restart open5gs-pcfd

echo "**** Restarting nssfd... ****"
sudo systemctl restart open5gs-nssfd

echo "**** Restarting bsfd... ****"
sudo systemctl restart open5gs-bsfd

echo "**** Restarting udrd... ****"
sudo systemctl restart open5gs-udrd

echo "**** Restarting webui... ****"
sudo systemctl restart open5gs-webui

echo "**** Restarting scpd... ****"
systemctl restart open5gs-scpd

echo
echo
echo "Done"
echo "Everything looks good to go!"

echo
read -s -p "Press ENTER to continue."
echo
