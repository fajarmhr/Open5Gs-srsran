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

echo "**install webui**"
echo
curl -fsSL https://open5gs.org/open5gs/assets/webui/install | sudo -E bash -
echo
echo "apt update"
apt update
echo
echo "donee.."