#!/bin/bash

UHD_IMAGES_DIR="/usr/share/uhd/images"
RR_LOC=`locate rr2.conf | grep 5Gconfig`
ENB_SERIAL="serial=3123C0D"
UHD_ARGS="--rf.device_args=\"${ENB_SERIAL}\""

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}" 
--enb.enb_id=0x19C 
--enb.gtp_bind_addr=127.0.1.2 
--enb.s1c_bind_addr=127.0.1.2"

sudo UHD_IMAGES_DIR=${UHD_IMAGES_DIR} srsenb enb.conf ${UHD_ARGS} ${OTHER_ARGS} $@