#!/bin/sh

ip_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $1}')
name_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $2}')

	if [ $ip_target ] && [ $name_target ]; then
#		echo "%{F#e0d1d2}%{F#e0d1d2} $ip_target - $name_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#e0d1d2}%{F#e0d1d2} $ip_target - $name_target %{A}"
	elif [ $(cat ~/.config/polybar/cuts/scripts/target | wc -w) -eq 1 ]; then
#		echo "%{F#e0d1d2}%{F#e0d1d2} $ip_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#e0d1d2}%{F#e0d1d2} $ip_target %{A}"
	else
		echo "%{F#e0d1d2}%{u-}%{F#e0d1d2} No target "
	fi
