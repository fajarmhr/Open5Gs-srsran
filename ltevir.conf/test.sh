#!/bin/bash

LOG_ARGS="--log.all_level=debug"

#ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`
CONF_LOC=`locate enb.conf | grep ltevir`
RR_LOC=`locate rr.conf | grep ltevir`

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}""

sudo srsenb ${CONF_LOC} ${OTHER_ARGS} ${LOG_ARGS}