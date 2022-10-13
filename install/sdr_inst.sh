#!/bin/bash
echo "install ZeroMQ"
apt install -y libzmq3-dev

echo "add uhd repo"
add-apt-repository ppa:ettusresearch/uhd

echo "apt update"
apt update

echo "installing..."
apt install -y libuhd-dev libuhd4.3.0 uhd-host

echo
echo "done.."