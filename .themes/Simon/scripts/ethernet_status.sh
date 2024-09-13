#!/bin/sh

#echo "%{F#ffffff}  %{F#ffffff}$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')%{u-}"

ip=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')

if [ -n "$ip" ]; then
  echo "%{F#e5e1d0}  %{F#e5e1d0}$ip%{u-}"
else
  echo "%{F#e5e1d0}  Offline"
fi

# Interfaces

# wlan0
# eth0
