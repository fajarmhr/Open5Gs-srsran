#!/bin/bash
echo
echo "### iperf3 on server side"
sudo ip netns exec ue1 iperf3 -c 10.45.0.1 -b 10M -i 1 -t 60