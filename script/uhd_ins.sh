#!/bin/bash
echo "add repo"
add-apt-repository ppa:ettusresearch/uhd

echo "apt update"
apt update

echo "installing..."
apt install libuhd-dev libuhd4.2.0 uhd-host -y

echo "done.."