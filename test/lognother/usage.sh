#!/bin/bash

for ((c=1; c<=5; c++)) 
do
   mpstat >> /home/masddika/script/raw/cpu.csv
   free -m >> /home/masddika/script/raw/mem.csv
   a=`cat /home/masddika/script/raw/cpu.csv | grep "all" | awk '{print$13}'`$'\n'
   b=`cat /home/masddika/script/raw/mem.csv | grep "Mem" | awk '{print$3}'`$'\n'

   cd /home/masddika/script/res/
   echo "$a" > cpu_idle.csv
   echo "$b" > mem_usage.csv
done
rm /home/masddika/script/raw/cpu.csv
rm /home/masddika/script/raw/mem.csv