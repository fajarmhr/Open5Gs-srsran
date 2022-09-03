#!/bin/bash

LOG_ARGS="--log.all_level=debug"

EPC_LOC=`locate /src/srsepc | grep /srsepc/src/srsepc`
CONF_LOC=`locate epc.conf | grep 5GNSAconfig`
DB_LOC=`locate user_db.csv | grep 5GNSAconfig`

OTHER_ARGS="--hss.db_file="${DB_LOC}""

sudo ${EPC_LOC} ${CONF_LOC} ${OTHER_ARGS} ${LOG_ARGS} $@