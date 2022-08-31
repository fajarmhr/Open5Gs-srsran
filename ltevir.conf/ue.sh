#!/bin/bash

UE_LOC="/home/adaptive/srsRAN/build/srsue/src/"
CONF_LOC="/home/adaptive/fajar/ltevir.conf/"

sudo ${UE_LOC}srsue ${CONF_LOC}ue.conf --gw.netns=ue1