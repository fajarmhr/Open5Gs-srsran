#!/bin/bash
echo
echo "***** Reading cpu gov *****"
echo
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
echo
echo -n "diganti gak iki bang? [y/n] "
read VAR

if [[ $VAR == y ]]
then
    echo
    echo "okeh tak gantine sek diluk"
    for ((i=0;i<$(nproc);i++)); do sudo cpufreq-set -c $i -r -g performance; done
elif [[ $VAR == n ]]
then
    echo
    echo "okeh bang aman"
fi

echo
echo
echo "wes beres slurdd..."
echo "====================="