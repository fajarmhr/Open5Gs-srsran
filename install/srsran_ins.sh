#!/bin/bash
echo "add repo"
add-apt-repository ppa:softwareradiosystems/srsran

echo "add libraries"
apt install build-essential cmake libfftw3-dev libmbedtls-dev libboost-program-options-dev libconfig++-dev libsctp-dev

echo "apt update"
apt update

echo "installing..."
apt install srsran -y

echo "donee..."