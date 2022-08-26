#!/bin/bash
echo "This script will Stop Open5GS Core."
echo
read -s -p "Press ENTER to continue, or CTRL + C to exit"

echo
echo
echo "**** Stopping mmed... ****"
systemctl stop open5gs-mmed

echo "**** Stopping sgwcd... ****"
systemctl stop open5gs-sgwcd

echo "**** Stopping smfd... ****"
systemctl stop open5gs-smfd

echo "**** Stopping amfd... ****"
systemctl stop open5gs-amfd

echo "**** Stopping sgwud... ****"
systemctl stop open5gs-sgwud

echo "**** Stopping upfd... ****"
systemctl stop open5gs-upfd

echo "**** Stopping hssd... ****"
systemctl stop open5gs-hssd

echo "**** Stopping pcrfd... ****"
systemctl stop open5gs-pcrfd

echo "**** Stopping nrfd... ****"
systemctl stop open5gs-nrfd

echo "**** Stopping ausfd... ****"
systemctl stop open5gs-ausfd

echo "**** Stopping udmd... ****"
systemctl stop open5gs-udmd

echo "**** Stopping pcfd... ****"
systemctl stop open5gs-pcfd

echo "**** Stopping nssfd... ****"
systemctl stop open5gs-nssfd

echo "**** Stopping bsfd... ****"
systemctl stop open5gs-bsfd

echo "**** Stopping udrd... ****"
systemctl stop open5gs-udrd

echo "**** Stopping webui... ****"
systemctl stop open5gs-webui

echo
echo
echo "Done"
echo "Everything looks good to go!"
echo
read -s -p "Press ENTER to continue."
echo
