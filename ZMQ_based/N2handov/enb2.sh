#!/bin/bash

LOG_ARGS="--log.all_level=info"

ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`
CONF_LOC=`locate enb.conf | grep N2handov`
RR_LOC=`locate rr2.conf | grep N2handov`
PORT_ARGS="tx_port=tcp://*:2201,rx_port=tcp://localhost:2200"

ZMQ_ARGS="--rf.device_args=\"fail_on_disconnect=true,${PORT_ARGS},id=enb,base_srate=11.52e6\""
OTHER_ARGS="--enb_files.rr_config="${RR_LOC}"
--enb.enb_id=0x19C 
--enb.gtp_bind_addr=127.0.1.2 
--enb.s1c_bind_addr=127.0.1.2"

sudo ${ENB_LOC} ${CONF_LOC} ${OTHER_ARGS} ${ZMQ_ARGS} ${LOG_ARGS} $@