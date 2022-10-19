#ITGSend -a 10.45.0.1 -m RTTM -T SCTP 3 1 -rp 9030 -l send_log_file

#SCTP
sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m RTTM -T SCTP 3 1 -rp 9030 -l res_sctp_rttm
sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m OWDM -T SCTP 3 1 -rp 9030 -l res_sctp_owdm

#TCP
sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m RTTM -T TCP -rp 9030 -l res_tcp_rttm
sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m OWDM -T TCP -rp 9030 -l res_tcp_owdm

#UDP
sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m RTTM -T UDP -rp 9030 -l res_udp_rttm
sudo ip netns exec ue1 ITGSend -a 10.45.0.1 -m OWDM -T UDP -rp 9030 -l res_udp_owdm

#VoIP
sudo ip netns exec ue1 ITGSend voip_script -l res_voip

# NOTE
# -m <meter> : OWDM (default), RTTM
# -T <protocol> : udp (default), tcp, icmp, sctp, dccp
# -t <duration> : (default 10000ms)
# -rp <receiver port>
# -sc <src port>

# VoIP                    Emulate Voice-over-IP traffic.
#        -x <codec>       VoIP sub-option: audio codec (default: G.711.1):
#                           - G.711.<1 or 2> (samples per pkt)
#                           - G.729.<2 or 3> (samples per pkt)
#                           - G.723.1
#        -h <protocol>    VoIP sub-option: audio transfer protocol (default: RTP):
#                           - RTP:  Real Time Protocol (default)
#                           - CRTP: Real Time Protocol with header compression
#        -VAD             VoIP sub-option: enable voice activity detection.

#                         Generate traffic with VoIP characteristics. It only works with UDP transport
#                         layer protocol. Different settings will be ignored.
#                         The emulation of the following codecs is supported:
#                         - G.711.1: for G.711 codec with 1 sample per pkt (default)
#                         - G.711.2: for G.711 codec with 2 samples per pkt
#                         - G.723.1: for G.723.1 codec
#                         - G.729.2: for G.729 codec with 2 samples per pkt
#                         - G.729.3: for G.729 codec with 3 samples per pkt