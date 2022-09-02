#!/bin/bash
echo "This script will stop 5G Core."
echo
read -s -p "Press ENTER to continue, or CTRL + C to exit"


# echo "**** stopping mmed... ****"
# systemctl stop open5gs-mmed

# echo "**** stopping sgwcd... ****"
# systemctl stop open5gs-sgwcd

# echo "**** stopping sgwud... ****"
# systemctl stop open5gs-sgwud

# echo "**** stopping hssd... ****"
# systemctl stop open5gs-hssd

# echo "**** stopping pcrfd... ****"
# systemctl stop open5gs-pcrfd

echo
echo "**** stopping 5G Core ****"
echo
echo

# echo "**** stopping upfd... ****"
# systemctl stop open5gs-upfd

# echo "**** stopping smfd... ****"
# systemctl stop open5gs-smfd

echo "**** stopping amfd... ****"
systemctl stop open5gs-amfd

echo "**** stopping nrfd... ****"
systemctl stop open5gs-nrfd

echo "**** stopping ausfd... ****"
systemctl stop open5gs-ausfd

echo "**** stopping udmd... ****"
systemctl stop open5gs-udmd

echo "**** stopping pcfd... ****"
systemctl stop open5gs-pcfd

echo "**** stopping nssfd... ****"
systemctl stop open5gs-nssfd

echo "**** stopping bsfd... ****"
systemctl stop open5gs-bsfd

echo "**** stopping udrd... ****"
systemctl stop open5gs-udrd

# echo "**** stopping webui... ****"
# systemctl stop open5gs-webui

echo
echo
echo "Done"
echo "Everything looks good to go!"

echo
read -s -p "Press ENTER to continue."
echo