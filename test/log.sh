#!/bin/bash

a=`cat /var/log/open5gs/amf.log`
b=`cat /var/log/open5gs/upf.log`
c=`cat /var/log/open5gs/ausf.log`
d=`cat /var/log/open5gs/udm.log`
e=`cat /var/log/open5gs/udr.log`
f=`cat /var/log/open5gs/pcf.log`
g=`cat /var/log/open5gs/smf.log`
h=`cat /var/log/open5gs/nrf.log`
i=`cat /var/log/open5gs/nssf.log`

cd raw
echo "$a" > amf.csv
echo "$b" > upf.csv
echo "$c" > ausf.csv
echo "$d" > udm.csv
echo "$e" > udr.csv
echo "$f" > pcf.csv
echo "$g" > smf.csv
echo "$h" > nrf.csv
echo "$i" > nssf.csv

sudo updatedb
cc=`locate /raw/semua.csv`
if [ -z "$cc" ]
then
    echo ""
else
    rm semua.csv
fi

echo -e "$a \n\n" >> semua.csv
echo -e "$b \n\n" >> semua.csv
echo -e "$c \n\n" >> semua.csv
echo -e "$d \n\n" >> semua.csv
echo -e "$e \n\n" >> semua.csv
echo -e "$f \n\n" >> semua.csv
echo -e "$g \n\n" >> semua.csv
echo -e "$h \n\n" >> semua.csv
echo -e "$i \n\n" >> semua.csv