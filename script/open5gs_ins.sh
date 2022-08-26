#!/bin/bash
echo "update apt"
apt update

echo "install requirements"
apt install software-properties-common

echo "add repo"
add-apt-repository ppa:open5gs/latest

echo "apt update"
apt update

echo "installing.."
apt install open5gs

echo "donee.."
echo
echo
echo "**install webui**"
echo
echo "apt update"
apt update

echo "install curl"
apt install curl

echo
 $ curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
 $ sudo apt install nodejs