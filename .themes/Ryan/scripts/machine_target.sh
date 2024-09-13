#!/bin/sh

ip_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $1}')
name_target=$(cat ~/.config/polybar/cuts/scripts/target | awk '{print $2}')

	if [ $ip_target ] && [ $name_target ]; then
#		echo "%{F#c2e6ac}%{F#c2e6ac} $ip_target - $name_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#c2e6ac}%{F#c2e6ac} $ip_target - $name_target %{A}"
	elif [ $(cat ~/.config/polybar/cuts/scripts/target | wc -w) -eq 1 ]; then
#		echo "%{F#c2e6ac}%{F#c2e6ac} $ip_target "
		echo "%{A1:echo $ip_target | xclip -selection clipboard:}%{F#c2e6ac}%{F#c2e6ac} $ip_target %{A}"
	else
		echo "%{F#c2e6ac}%{u-}%{F#c2e6ac} No target "
	fi
