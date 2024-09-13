#!/bin/sh

ip_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $1}')
name_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $2}')

	if [ $ip_target ] && [ $name_target ]; then
#		echo "%{F#efe8e3}%{F#efe8e3} $ip_target - $name_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#efe8e3}%{F#efe8e3} $ip_target - $name_target %{A}"
	elif [ $(cat ~/.config/polybar/cuts/scripts/target | wc -w) -eq 1 ]; then
#		echo "%{F#efe8e3}%{F#efe8e3} $ip_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#efe8e3}%{F#efe8e3} $ip_target %{A}"
	else
		echo "%{F#efe8e3}%{u-}%{F#efe8e3} No target "
	fi
