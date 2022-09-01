#!/bin/bash
echo "........................"
echo "///////////// installing nodejs 16"
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
echo
echo "done......."