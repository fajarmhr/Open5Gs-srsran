#!/bin/bash

#LOG_ARGS="--log.all_level=debug"

UHD_IMAGES_DIR="/usr/share/uhd/images"
ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`
RR_LOC=`locate rr1.conf | grep 4Gconfig`
ENB_SERIAL="serial=F6113F"
UHD_ARGS="--rf.device_args=\"${ENB_SERIAL}\""

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}""

sudo UHD_IMAGES_DIR=${UHD_IMAGES_DIR} ${ENB_LOC} enb.conf ${UHD_ARGS} ${OTHER_ARGS} $@