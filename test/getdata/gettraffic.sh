#!/bin/bash

sudo updatedb
RAW=`locate test/getdata | grep "/test/getdata/raw/"`
cd res
for ((c=1; c<=5; c++)) 
do
   sudo ip netns exec ue1 iperf3 -c 10.45.0.1 -i 0.5 -t 60 --sctp >> ${RAW}sctp_i.csv
   sudo ip netns exec ue1 iperf3 -c 10.45.0.1 -i 0.5 -t 60 >> ${RAW}tcp_i.csv
   sudo ip netns exec ue1 iperf3 -c 10.45.0.1 -i 0.5 -t 60 --udp >> ${RAW}udp_i.csv
   a=`cat ${RAW}sctp_i.csv | grep "receiver" | awk '{print$6}'`$'\n'
   b=`cat ${RAW}tcp_i.csv | grep "receiver" | awk '{print$6}'`$'\n'
   c=`cat ${RAW}udp_i.csv | grep "receiver" | awk '{print$6}'`$'\n'

   echo "$a" > sctp_i.csv
   echo "$b" > tcp_i.csv
   echo "$c" > udp_i.csv
done
rm ${RAW}sctp_i.csv
rm ${RAW}tcp_i.csv
rm ${RAW}udp_i.csv