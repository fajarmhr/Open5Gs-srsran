#!/bin/bash

ENB_LOC=`locate /src/srsenb | grep /srsenb/src/srsenb`

sudo ${ENB_LOC} ./enb.conf $@