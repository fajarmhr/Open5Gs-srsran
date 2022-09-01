#!/bin/bash

UE_LOC="/home/adaptive/srsRAN/build/srsue/src/"
CONF_LOC="/home/adaptive/Open5Gs-srsran/savirconfig/"
OTHER_ARGS="--gw.netns=ue1"

sudo ${UE_LOC}srsue ${CONF_LOC}ue.conf ${OTHER_ARGS} $@