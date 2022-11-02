#!/bin/bash

UHD_IMAGES_DIR="/usr/share/uhd/images"
ENB_SERIAL="serial=3123C0D"
UHD_ARGS="--rf.device_args=\"${ENB_SERIAL}\""

sudo UHD_IMAGES_DIR=${UHD_IMAGES_DIR} srsenb ./enb2.conf ${UHD_ARGS} $@