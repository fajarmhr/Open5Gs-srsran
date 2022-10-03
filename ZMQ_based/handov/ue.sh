#!/bin/bash

## Create netns for UE
ip netns list | grep "ue1" > /dev/null
if [ $? -eq 1 ]; then
  echo creating netspace ue1...
  sudo ip netns add ue1
  if [ $? -ne 0 ]; then
   echo failed to create netns ue1
   exit 1
  fi
fi

LOG_ARGS="--log.all_level=info"
NETNS=`sudo ip netns list | grep 1`
OTHER_ARGS="--gw.netns="${NETNS}""

sudo srsue ./ue.conf ${LOG_ARGS} ${OTHER_ARGS} $@