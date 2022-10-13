#!/bin/bash

PORT_ARGS="tx_port=tcp://*:2103,rx_port=tcp://localhost:2102"

ZMQ_ARGS="--rf.device_args=\"fail_on_disconnect=true,${PORT_ARGS},id=enb,base_srate=23.04e6\""

sudo srsenb ./enb2.conf ${ZMQ_ARGS} $@