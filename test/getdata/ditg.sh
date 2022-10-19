#!/bin/bash

cd raw

echo -n -e " ketik 1 untuk client core\n ketik 2 untuk client ue\n ketik 3 untuk masuk surga\n [1/2] "
read DITG

if [[ $DITG == 1 ]]
then
    echo
    echo "ditg client on core"
    echo
    echo -n -e "\nketik IP UE : "
    read IPUE
    echo
    echo "iperfing client on server ${IPUE}"
    #SCTP
    echo -e "==== Testing SCTP ====\n"
    echo -e "=== RTTM ===\n"
    ITGSend -a ${IPUE} -m RTTM -T SCTP 3 1 -rp 9030 -l res_sctp_rttm
    echo -e "\n\n=== OWDM ===\n"
    ITGSend -a ${IPUE} -m OWDM -T SCTP 3 1 -rp 9030 -l res_sctp_owdm

    #TCP
    echo -e "==== Testing TCP ====\n"
    echo -e "=== RTTM ===\n"
    ITGSend -a ${IPUE} -m RTTM -T TCP -rp 9030 -l res_tcp_rttm
    echo -e "\n\n=== OWDM ===\n"
    ITGSend -a ${IPUE} -m OWDM -T TCP -rp 9030 -l res_tcp_owdm

    #UDP
    echo -e "==== Testing UDP ====\n"
    echo -e "=== RTTM ===\n"
    ITGSend -a ${IPUE} -m RTTM -T UDP -rp 9030 -l res_udp_rttm
    echo -e "\n\n=== OWDM ===\n"
    ITGSend -a ${IPUE} -m OWDM -T UDP -rp 9030 -l res_udp_owdm

    #VoIP
    echo -e "==== Testing VoIP ====\n"
    #ITGSend -a ${IPUE} -rp 9030 VoIP -x G.711.2 -h RTP -VAD -l res_voip
    ITGSend -a ${IPUE} -rp 9030 Telnet -l res_telnet
    ITGSend -a ${IPUE} -rp 9030 DNS -l res_dns

elif [[ $DITG == 2 ]]
then
    echo
    echo "ditg client on UE"
    echo
    #SCTP
    echo -e "==== Testing SCTP ====\n"
    echo -e "=== RTTM ===\n"
    sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m RTTM -T SCTP 3 1 -rp 9030 -l res_sctp_rttm
    echo -e "\n\n=== OWDM ===\n"
    sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m OWDM -T SCTP 3 1 -rp 9030 -l res_sctp_owdm

    #TCP
    echo -e "==== Testing TCP ====\n"
    echo -e "=== RTTM ===\n"
    sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m RTTM -T TCP -rp 9030 -l res_tcp_rttm
    echo -e "\n\n=== OWDM ===\n"
    sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m OWDM -T TCP -rp 9030 -l res_tcp_owdm

    #UDP
    echo -e "==== Testing UDP ====\n"
    echo -e "=== RTTM ===\n"
    sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m RTTM -T UDP -rp 9030 -l res_udp_rttm
    echo -e "\n\n=== OWDM ===\n"
    sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m OWDM -T UDP -rp 9030 -l res_udp_owdm

    #VoIP
    echo -e "==== Testing VoIP ====\n"
    sudo ip netns exec ue1 ITGSend voip_script -l res_voip
elif [[ $DITG == 3 ]]
then
    echo
    echo "subhanallah"
fi