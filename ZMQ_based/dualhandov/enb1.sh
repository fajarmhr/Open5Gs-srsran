#!/bin/bash

CONF_LOC=`locate enb1.conf | grep dualhandov`

sudo srsenb ${CONF_LOC} $@