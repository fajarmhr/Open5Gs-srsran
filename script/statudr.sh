#!/bin/bash
echo "This script will check the status of Open5Gs protocol."
echo
read -s -p "Press ENTER to continue, or CTRL + C to exit"

echo
echo
echo "**** Checking udrd... ****"
sudo systemctl status open5gs-udrd.service

echo
echo
echo "Done"
echo "Everything looks good to go!"

echo
read -s -p "Press ENTER to continue."
echo
