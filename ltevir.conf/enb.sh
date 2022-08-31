#!/bin/bash

LOG_ARGS="--log.all_level=debug"

ENB_LOC="/home/adaptive/srsRAN/build/srsenb/src/"
CONF_LOC="/home/adaptive/fajar/ltevir.conf/"

OTHER_ARGS="--enb_files.rr_config="${CONF_LOC}"rr.conf"

sudo ${ENB_LOC}srsenb ${CONF_LOC}enb.conf ${OTHER_ARGS} ${LOG_ARGS}