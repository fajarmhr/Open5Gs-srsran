#!/bin/bash

CONF_LOC=`locate enb2.conf | grep dualhandov`

sudo srsenb ${CONF_LOC} $@