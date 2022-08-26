#!/bin/bash
echo "This script will restart 4G Core."
echo
read -s -p "Press ENTER to continue, or CTRL + C to exit"

echo
echo "**** Restarting 4G Core ****"
echo
echo

echo "**** Restarting mmed... ****"
systemctl restart open5gs-mmed

echo "**** Restarting sgwcd... ****"
systemctl restart open5gs-sgwcd

echo "**** Restarting sgwud... ****"
systemctl restart open5gs-sgwud

echo "**** Restarting hssd... ****"
systemctl restart open5gs-hssd

echo "**** Restarting pcrfd... ****"
systemctl restart open5gs-pcrfd

echo "**** Restarting upfd... ****"
systemctl restart open5gs-upfd

echo "**** Restarting smfd... ****"
systemctl restart open5gs-smfd

# echo "**** Restarting amfd... ****"
# systemctl restart open5gs-amfd

# echo "**** Restarting nrfd... ****"
# systemctl restart open5gs-nrfd

# echo "**** Restarting ausfd... ****"
# systemctl restart open5gs-ausfd

# echo "**** Restarting udmd... ****"
# systemctl restart open5gs-udmd

# echo "**** Restarting pcfd... ****"
# systemctl restart open5gs-pcfd

# echo "**** Restarting nssfd... ****"
# systemctl restart open5gs-nssfd

# echo "**** Restarting bsfd... ****"
# systemctl restart open5gs-bsfd

# echo "**** Restarting udrd... ****"
# systemctl restart open5gs-udrd

echo "**** Restarting webui... ****"
systemctl restart open5gs-webui

echo
echo
echo "Done"
echo "Everything looks good to go!"

echo
read -s -p "Press ENTER to continue."
echo