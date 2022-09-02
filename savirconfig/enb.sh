#!/bin/bash

LOG_ARGS="--log.all_level=debug"

ENB_LOC="/home/adaptive/srsRAN/build/srsenb/src/"
CONF_LOC="/home/adaptive/Open5Gs-srsran/savirconfig/"

OTHER_ARGS="--enb_files.rr_config="${CONF_LOC}"rr.conf 
--enb_files.rb_config="${CONF_LOC}"rb.conf
--enb_files.sib_config="${CONF_LOC}"sib.conf"

sudo ${ENB_LOC}srsenb ${CONF_LOC}enb.conf ${OTHER_ARGS} ${LOG_ARGS} $@