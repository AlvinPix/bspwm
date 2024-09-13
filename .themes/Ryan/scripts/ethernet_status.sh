#!/bin/sh

#echo "%{F#ffffff}  %{F#ffffff}$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')%{u-}"

ip=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')

if [ -n "$ip" ]; then
  echo "%{F#c2e6ac}  %{F#c2e6ac}$ip%{u-}"
else
  echo "%{F#c2e6ac}  Offline"
fi

# Interfaces

# wlan0
# eth0
