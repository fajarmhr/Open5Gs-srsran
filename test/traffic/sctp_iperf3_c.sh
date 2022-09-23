#!/bin/bash
echo
echo "### iperf3 on client side"
sudo ip netns exec ue1 iperf3 -c 10.45.0.1 -i 0.5 -t 30 --sctp