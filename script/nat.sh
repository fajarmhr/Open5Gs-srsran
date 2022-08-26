#!/bin/bash
echo
echo
echo "### Checking ipv4 NAT rules"
echo
iptables -L -t nat
echo
echo
echo "### Checking ipv6 NAT rules"
echo
ip6tables -L -t nat
echo
echo
echo -n "y lanjut, n metu [y/n] "
read VAR

if [[ $VAR == y ]]
then
    echo
    echo "### Enable IPv4/IPv6 Forwarding"
    sysctl -w net.ipv4.ip_forward=1
    sysctl -w net.ipv6.conf.all.forwarding=1

    echo "### Add NAT Rule"
    iptables -t nat -A POSTROUTING -s 10.45.0.0/16 ! -o ogstun -j MASQUERADE
    ip6tables -t nat -A POSTROUTING -s 2001:db8:cafe::/48 ! -o ogstun -j MASQUERADE
    iptables -t nat -A POSTROUTING -s 10.20.0.0/16 ! -o wlo1 -j MASQUERADE

elif [[ $VAR == n ]]
then
    echo
    echo "okeh bang aman"
fi

echo
echo "donee..."
