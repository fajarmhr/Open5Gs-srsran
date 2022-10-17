#!/bin/bash

RR_LOC=`locate rr.conf | grep intrahandov`

OTHER_ARGS="--enb_files.rr_config="${RR_LOC}""

sudo srsenb ./enb.conf ${OTHER_ARGS} $@