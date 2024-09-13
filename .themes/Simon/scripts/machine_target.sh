#!/bin/sh

ip_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $1}')
name_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $2}')

	if [ $ip_target ] && [ $name_target ]; then
#		echo "%{F#e5e1d0}%{F#e5e1d0} $ip_target - $name_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#e5e1d0}%{F#e5e1d0} $ip_target - $name_target %{A}"
	elif [ $(cat ~/.config/polybar/cuts/scripts/target | wc -w) -eq 1 ]; then
#		echo "%{F#e5e1d0}%{F#e5e1d0} $ip_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#e5e1d0}%{F#e5e1d0} $ip_target %{A}"
	else
		echo "%{F#e5e1d0}%{u-}%{F#e5e1d0} No target "
	fi
