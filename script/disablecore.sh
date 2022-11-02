#!/bin/bash
echo "This script will disable Open5Gs."
echo
read -s -p "Press ENTER to continue, or CTRL + C to exit"

echo
echo
echo "**** Disabling mmed... ****"
sudo systemctl disable open5gs-mmed

echo "**** Disabling sgwcd... ****"
sudo systemctl disable open5gs-sgwcd

echo "**** Disabling smfd... ****"
sudo systemctl disable open5gs-smfd

echo "**** Disabling amfd... ****"
sudo systemctl disable open5gs-amfd

echo "**** Disabling sgwud... ****"
sudo systemctl disable open5gs-sgwud

echo "**** Disabling upfd... ****"
sudo systemctl disable open5gs-upfd

echo "**** Disabling hssd... ****"
sudo systemctl disable open5gs-hssd

echo "**** Disabling pcrfd... ****"
sudo systemctl disable open5gs-pcrfd

echo "**** Disabling nrfd... ****"
sudo systemctl disable open5gs-nrfd

echo "**** Disabling ausfd... ****"
sudo systemctl disable open5gs-ausfd

echo "**** Disabling udmd... ****"
sudo systemctl disable open5gs-udmd

echo "**** Disabling pcfd... ****"
sudo systemctl disable open5gs-pcfd

echo "**** Disabling nssfd... ****"
sudo systemctl disable open5gs-nssfd

echo "**** Disabling bsfd... ****"
sudo systemctl disable open5gs-bsfd

echo "**** Disabling udrd... ****"
sudo systemctl disable open5gs-udrd

echo "**** Disabling webui... ****"
sudo systemctl disable open5gs-webui

echo "**** Disabling scpd... ****"
sudo systemctl disable open5gs-scpd

echo
echo
echo "Done"
echo "Everything looks good to go!"