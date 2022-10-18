#!/bin/bash

sudo updatedb
RAW=`locate test/getdata | grep "/test/getdata/raw/"`
cd res
for ((c=1; c<=3; c++)) 
do
   mpstat >> ${RAW}cpu.csv
   free -m >> ${RAW}mem.csv
   a=`cat ${RAW}cpu.csv | grep "all" | awk '{print$13}'`$'\n'
   b=`cat ${RAW}mem.csv | grep "Mem" | awk '{print$3}'`$'\n'

   echo "$a" > cpu_idle.csv
   echo "$b" > mem_usage.csv
done
rm ${RAW}cpu.csv
rm ${RAW}mem.csv