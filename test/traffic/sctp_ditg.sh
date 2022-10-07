#ITGSend -a 10.45.0.1 -m RTTM -T SCTP 3 1 -rp 9030 -l send_log_file
sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m RTTM -T SCTP 3 1 -rp 9030 -l send_log_file

# NOTE
# -m <meter> : ODWM (default), RTTM
# -T <protocol> : udp (default), tcp, icmp, sctp, dccp
# -t <duration> : (default 10000ms)
# -rp <receiver port>
# -sc <src port>