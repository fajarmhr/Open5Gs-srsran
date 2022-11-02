#!/bin/bash

UHD_IMAGES_DIR="/usr/share/uhd/images"
ENB_SERIAL="serial=F6113F"
UHD_ARGS="--rf.device_args=\"${ENB_SERIAL}\""

sudo UHD_IMAGES_DIR=${UHD_IMAGES_DIR} srsenb ./enb.conf ${UHD_ARGS} $@