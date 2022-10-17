#!/bin/bash

RR_LOC=`locate rr5g.conf | grep intrahandov`

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}"
--enb.mme_addr=127.0.0.5"

sudo srsenb ./enb.conf ${OTHER_ARGS} $@