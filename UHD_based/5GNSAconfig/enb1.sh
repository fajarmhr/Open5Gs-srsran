#!/bin/bash

LOG_ARGS="--log.all_level=debug"

UHD_IMAGES_DIR="/usr/share/uhd/images"
ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`
CONF_LOC=`locate enb.conf | grep 5GNSAconfig`
RR_LOC=`locate rr1.conf | grep 5GNSAconfig`
RB_LOC=`locate rb.conf | grep 5GNSAconfig`
SIB_LOC=`locate sib.conf | grep 5GNSAconfig`
ENB_SERIAL="serial=F6113F"
UHD_ARGS="--rf.device_args=\"${ENB_SERIAL}\""

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}"
--enb_files.rb_config="${RB_LOC}"
--enb_files.sib_config="${SIB_LOC}""

sudo UHD_IMAGES_DIR=${UHD_IMAGES_DIR} ${ENB_LOC} ${CONF_LOC} ${LOG_ARGS} ${UHD_ARGS} ${OTHER_ARGS} $@