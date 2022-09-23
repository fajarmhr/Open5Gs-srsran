#!/bin/bash
echo
echo "### Watch the live ENB log"
sudo updatedb
ENB=`locate enb.log | grep "N2handov"`
tail -f ${ENB}