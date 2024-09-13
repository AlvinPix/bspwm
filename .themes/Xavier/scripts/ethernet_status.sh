#!/bin/sh

#echo "%{F#ffffff}  %{F#ffffff}$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')%{u-}"

ip=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')

if [ -n "$ip" ]; then
  echo "%{F#e0e5e4}  %{F#e0e5e4}$ip%{u-}"
else
  echo "%{F#e0e5e4}  Offline"
fi

# Interfaces

# wlan0
# eth0
