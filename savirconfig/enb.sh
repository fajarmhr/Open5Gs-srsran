#!/bin/bash

LOG_ARGS="--log.all_level=debug"

ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`
CONF_LOC=`locate enb.conf | grep savir`
RR_LOC=`locate rr.conf | grep savir`
RB_LOC=`locate rb.conf | grep savir`
SIB_LOC=`locate sib.conf | grep savir`

OTHER_ARGS="--enb_files.rr_config="${CONF_LOC}"
--enb_files.rb_config="${CONF_LOC}"
--enb_files.sib_config="${CONF_LOC}""

sudo ${ENB_LOC} ${CONF_LOC} ${OTHER_ARGS} ${LOG_ARGS} $@