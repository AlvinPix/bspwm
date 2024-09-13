#!/bin/sh

#echo "%{F#ffffff}  %{F#ffffff}$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')%{u-}"

ip=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')

if [ -n "$ip" ]; then
  echo "%{F#7ae7ed}  %{F#7ae7ed}$ip%{u-}"
else
  echo "%{F#7ae7ed}  Offline"
fi

# Interfaces

# wlan0
# eth0
