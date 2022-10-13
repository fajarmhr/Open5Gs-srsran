#!/bin/bash

# LOG_ARGS="--log.all_level=debug"

UHD_IMAGES_DIR="/usr/share/uhd/images"
ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`
RR_LOC=`locate rr2.conf | grep 4Gconfig`
RB_LOC=`locate rb.conf | grep 4Gconfig`
SIB_LOC=`locate sib.conf | grep 4Gconfig`
ENB_SERIAL="serial=3123C0D"
UHD_ARGS="--rf.device_args=\"${ENB_SERIAL}\""

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}" 
--enb_files.rb_config="${RB_LOC}"
--enb_files.sib_config="${SIB_LOC}"
--enb.enb_id=0x19C 
--enb.gtp_bind_addr=127.0.1.2 
--enb.s1c_bind_addr=127.0.1.2"

sudo UHD_IMAGES_DIR=${UHD_IMAGES_DIR} ${ENB_LOC} enb.conf ${LOG_ARGS} ${UHD_ARGS} ${OTHER_ARGS} $@