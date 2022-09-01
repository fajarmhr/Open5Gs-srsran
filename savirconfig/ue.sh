#!/bin/bash

UE_LOC="/home/adaptive/srsRAN/build/srsue/src/"
CONF_LOC="/home/adaptive/fajar/ltevir.conf/"
OTHER_ARGS="--gw.netns=ue1"

sudo ${UE_LOC}srsue ${CONF_LOC}ue.conf ${OTHER_ARGS} $@