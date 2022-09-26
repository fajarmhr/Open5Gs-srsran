#!/bin/bash

LOG_ARGS="--log.all_level=info"

CONF_LOC=`locate enb2.conf | grep S1handov`
RR_LOC=`locate rr2.conf | grep S1handov`
PORT_ARGS="tx_port=tcp://*:2103,rx_port=tcp://localhost:2102"

ZMQ_ARGS="--rf.device_args=\"fail_on_disconnect=true,${PORT_ARGS},id=enb,base_srate=23.04e6\""
OTHER_ARGS="--enb_files.rr_config="${RR_LOC}"
--enb.enb_id=0x19C 
--enb.gtp_bind_addr=127.0.1.2 
--enb.s1c_bind_addr=127.0.1.2"

sudo srsenb ${CONF_LOC} ${OTHER_ARGS} ${ZMQ_ARGS} ${LOG_ARGS} $@