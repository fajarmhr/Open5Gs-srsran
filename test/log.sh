#!/bin/bash

LOC=`locate test/raw/`

a=`cat /var/log/open5gs/amf.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
b=`cat /var/log/open5gs/upf.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
c=`cat /var/log/open5gs/ausf.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
d=`cat /var/log/open5gs/udm.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
e=`cat /var/log/open5gs/udr.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
f=`cat /var/log/open5gs/pcf.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
g=`cat /var/log/open5gs/smf.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
h=`cat /var/log/open5gs/nrf.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'
i=`cat /var/log/open5gs/nssf.log | awk '{print$2}' | awk '{print$3}' | awk '{print$4}' | awk '{print$5}'`$'\n'

cd ${LOC}
rm *
echo "$a" >> amf.csv
echo "$b" >> upf.csv
echo "$c" >> ausf.csv
echo "$d" >> udm.csv
echo "$e" >> udr.csv
echo "$f" >> pcf.csv
echo "$g" >> smf.csv
echo "$h" >> nrf.csv
echo "$i" >> nssf.csv

echo "$a" > semua.csv
echo "$b" > semua.csv
echo "$c" > semua.csv
echo "$d" > semua.csv
echo "$e" > semua.csv
echo "$f" > semua.csv
echo "$g" > semua.csv
echo "$h" > semua.csv
echo "$i" > semua.csv