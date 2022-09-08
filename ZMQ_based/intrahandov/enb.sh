#!/bin/bash

LOG_ARGS="--log.all_level=debug"

ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`
CONF_LOC=`locate enb.conf | grep intrahandov`
RR_LOC=`locate rr.conf | grep intrahandov`
RB_LOC=`locate rb.conf | grep intrahandov`
SIB_LOC=`locate sib.conf | grep intrahandov`

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}"
--enb_files.rb_config="${RB_LOC}"
--enb_files.sib_config="${SIB_LOC}""

sudo ${ENB_LOC} ${CONF_LOC} ${OTHER_ARGS} ${LOG_ARGS} $@