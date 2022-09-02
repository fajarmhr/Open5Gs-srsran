#!/bin/bash

sudo ip netns add ue1
echo "abaikan kalo ada warning, gapopo..."

UE_LOC=`locate /src/srsue | grep /srsue/src/srsue`
CONF_LOC=`locate ue.conf | grep ltevir`
NETNS=`sudo ip netns list`
OTHER_ARGS="--gw.netns="${NETNS}""

sudo ${UE_LOC} ${CONF_LOC} ${OTHER_ARGS} $@