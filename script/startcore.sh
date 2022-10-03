#!/bin/bash
echo "This script will start Open5Gs Core."
echo
echo
echo "**** Starting mmed... ****"
open5gs-mmed

echo "**** Starting sgwcd... ****"
gnome-terminal
open5gs-sgwcd

echo "**** Starting smfd... ****"
gnome-terminal
open5gs-smfd

echo "**** Starting amfd... ****"
gnome-terminal
open5gs-amfd

echo "**** Starting sgwud... ****"
gnome-terminal
open5gs-sgwud

echo "**** Starting upfd... ****"
gnome-terminal
open5gs-upfd

echo "**** Starting hssd... ****"
gnome-terminal
open5gs-hssd

echo "**** Starting pcrfd... ****"
gnome-terminal
open5gs-pcrfd

echo "**** Starting nrfd... ****"
gnome-terminal
open5gs-nrfd

echo "**** Starting ausfd... ****"
gnome-terminal
open5gs-ausfd

echo "**** Starting udmd... ****"
gnome-terminal
open5gs-udmd

echo "**** Starting pcfd... ****"
gnome-terminal
open5gs-pcfd

echo "**** Starting nssfd... ****"
gnome-terminal
open5gs-nssfd

echo "**** Starting bsfd... ****"
gnome-terminal
open5gs-bsfd

echo "**** Starting udrd... ****"
gnome-terminal
open5gs-udrd

echo "**** Starting webui... ****"
gnome-terminal
open5gs-webui

echo
echo
echo "Done.."