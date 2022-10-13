#!/bin/bash
echo "........................"
echo "///////////// installing nodejs 16"
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
sudo apt instll -y npm
echo
echo "done......."