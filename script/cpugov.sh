#!/bin/bash
echo
echo "***** Reading cpu gov *****"
echo
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
echo
echo "wes performa a lek?"
echo
echo "nek durung kliken enter su"
echo "nek uwes metuo"
read -s -p "Press ENTER to set to performance, or CTRL + C to exit"
echo
echo
for ((i=0;i<$(nproc);i++)); do sudo cpufreq-set -c $i -r -g performance; done
echo
echo "wes beres slurdd..."
