#!/bin/bash

LOG_ARGS="--log.all_level=debug"

UHD_IMAGES_DIR="/usr/share/uhd/images"
ENB_LOC="/home/adaptive/srsRAN/build/srsenb/src/"
ENB_SERIAL="serial=3123C0D"
UHD_ARGS="--rf.device_args=\"${ENB_SERIAL}\""
CONF_LOC="/home/adaptive/fajar/new.conf/"

OTHER_ARGS="--enb_files.rr_config="${CONF_LOC}"rr2.conf --enb.enb_id=0x19C --enb.gtp_bind_addr=127.0.1.2 --enb.s1c_bind_addr=127.0.1.2"

sudo UHD_IMAGES_DIR=${UHD_IMAGES_DIR} ${ENB_LOC}srsenb ${CONF_LOC}enb.conf ${LOG_ARGS} ${UHD_ARGS} ${OTHER_ARGS} $@