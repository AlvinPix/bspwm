#!/bin/sh

#echo "%{F#ffffff}  %{F#ffffff}$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')%{u-}"

ip=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')

if [ -n "$ip" ]; then
  echo "%{F#efe8e3}  %{F#efe8e3}$ip%{u-}"
else
  echo "%{F#efe8e3}  Offline"
fi

# Interfaces

# wlan0
# eth0
