#!/bin/bash
echo
echo "### iperf3 on server side"
echo -n "1 server core, 1 server ue [1/2] "
read SER

if [[ $SER == 1 ]]
then
    echo
    echo "iperf server on core"
    iperf3 -s -i 0.5

elif [[ $SER == 2 ]]
then
    echo
    echo "iperf server on UE"
    echo
    sudo ip netns exec ue1 iperf3 -s -i 0.5
fi