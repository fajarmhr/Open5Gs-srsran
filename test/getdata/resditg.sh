#!/bin/bash

cd raw

a=`ITGDec res_sctp_rttm | grep "bitrate" | awk '{print$4}'`$'\n'
b=`ITGDec res_sctp_owdm | grep "bitrate" | awk '{print$4}'`$'\n'
c=`ITGDec res_tcp_rttm | grep "bitrate" | awk '{print$4}'`$'\n'
d=`ITGDec res_tcp_owdm | grep "bitrate" | awk '{print$4}'`$'\n'
e=`ITGDec res_udp_rttm | grep "bitrate" | awk '{print$4}'`$'\n'
f=`ITGDec res_udp_owdm | grep "bitrate" | awk '{print$4}'`$'\n'
g=`ITGDec res_dns | grep "bitrate" | awk '{print$4}'`$'\n'
h=`ITGDec res_telnet | grep "bitrate" | awk '{print$4}'`$'\n'

i=`ITGDec res_sctp_rttm | grep "Average delay" | awk '{print$4}'`$'\n'
j=`ITGDec res_sctp_owdm | grep "Average delay" | awk '{print$4}'`$'\n'
k=`ITGDec res_tcp_rttm | grep "Average delay" | awk '{print$4}'`$'\n'
l=`ITGDec res_tcp_owdm | grep "Average delay" | awk '{print$4}'`$'\n'
m=`ITGDec res_udp_rttm | grep "Average delay" | awk '{print$4}'`$'\n'
n=`ITGDec res_udp_owdm | grep "Average delay" | awk '{print$4}'`$'\n'
o=`ITGDec res_dns | grep "Average delay" | awk '{print$4}'`$'\n'
p=`ITGDec res_telnet | grep "Average delay" | awk '{print$4}'`$'\n'

docasli=`ITGDec res_sctp_rttm`$'\n'

rm ../res/ditg.csv

echo "====== SCTP RTT ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$a" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$i" >> ../res/ditg.csv

echo "====== SCTP OWD ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$b" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$j" >> ../res/ditg.csv

echo "====== TCP RTT ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$c" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$k" >> ../res/ditg.csv

echo "====== TCP OWD ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$d" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$l" >> ../res/ditg.csv

echo "====== UDP RTT ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$e" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$m" >> ../res/ditg.csv

echo "====== UDP OWD ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$f" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$n" >> ../res/ditg.csv

echo "====== DNS ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$g" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$o" >> ../res/ditg.csv

echo "====== TELNET ======" >> ../res/ditg.csv
echo "----- Avg bitrate -----" >> ../res/ditg.csv
echo "$h" >> ../res/ditg.csv
echo "----- Avg delay -----" >> ../res/ditg.csv
echo "$p" >> ../res/ditg.csv

echo -e "====== DOKUMEN ASLI ======\n" >> ../res/ditg.csv
echo "$docasli" >> ../res/ditg.csv