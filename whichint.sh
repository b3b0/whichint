#!/bin/sh
for ipaddress in "$@"
do
host_ip=$(getent ahosts "$ipaddress" | awk '{print $1; exit}')
ip route get "$ipaddress" | grep -Po '(?<=(dev )).*(?= src| proto)'
done
