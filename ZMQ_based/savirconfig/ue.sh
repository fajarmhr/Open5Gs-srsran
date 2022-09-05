#!/bin/bash

# sudo ip netns add ue1
# echo "abaikan kalo ada warning, gapopo..."

UE_LOC=`locate /src/srsue | grep /srsue/src/srsue`
CONF_LOC=`locate ue.conf | grep savir`
NETNS=`sudo ip netns list | grep 1`
OTHER_ARGS="--gw.netns="${NETNS}""

sudo ${UE_LOC} ${CONF_LOC} ${OTHER_ARGS} $@