#!/bin/bash

LOG_ARGS="--log.all_level=debug"
EPC_LOC="/home/adaptive/srsRAN/build/srsepc/src/"
CONF_LOC="/home/adaptive/fajar/ltevir.conf/"

OTHER_ARGS="--hss.db_file="${CONF_LOC}"user_db.csv"

sudo ${EPC_LOC}srsepc ${CONF_LOC}epc.conf ${LOG_ARGS} ${OTHER_ARGS}