#!/bin/sh
for ipaddress in "$@"
do
ip route get "$ipaddress" | grep -Po '(?<=(dev )).*(?= src| proto)'
done
