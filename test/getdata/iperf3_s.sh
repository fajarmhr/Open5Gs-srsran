#!/bin/bash
echo
echo "### iperf3 on server side"
echo
echo -n -e " ketik 1 untuk server core\n ketik 2 untuk server ue\n ketik 3 untuk masuk surga\n [1/2] "
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
elif [[ $SER == 3 ]]
then
    echo
    echo "subhanallah"
fi