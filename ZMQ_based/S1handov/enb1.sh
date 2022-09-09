#!/bin/bash

LOG_ARGS="--log.all_level=debug"

CONF_LOC=`locate enb.conf | grep S1handov`
RR_LOC=`locate rr1.conf | grep S1handov`
PORT_ARGS="tx_port=tcp://*:2101,rx_port=tcp://localhost:2100"

ZMQ_ARGS="--rf.device_args=\"fail_on_disconnect=true,${PORT_ARGS},id=enb,base_srate=23.04e6\""
OTHER_ARGS="--enb_files.rr_config="${RR_LOC}""

sudo srsenb ${CONF_LOC} ${OTHER_ARGS} ${ZMQ_ARGS} ${LOG_ARGS} $@