#!/bin/bash

PORT_ARGS="tx_port=tcp://*:2101,rx_port=tcp://localhost:2100"

ZMQ_ARGS="--rf.device_args=\"fail_on_disconnect=true,${PORT_ARGS},id=enb,base_srate=23.04e6\""

sudo srsenb ./enb.conf ${ZMQ_ARGS} $@