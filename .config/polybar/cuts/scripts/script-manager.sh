#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/cuts/scripts"
GHOSTDIR="${HOME}/scripts/Ghost-script"
FALCONDIR="${HOME}/scripts/Falcon"
#RESI="/home/alvinpix/Escritorio/PX-games/Scripts"
USERDIR="${HOME}/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $SDIR/rofi/styles.rasi \
<<< " Updates| Wifi|")"
            case "$MENU" in
#*Ghost)
#kitty -o ~/.config/kitty/kitty.conf --hold -- bash -c "cd $USERDIR && ./rezise.sh && cd $GHOSTDIR && sudo ./Ghost.sh"
#;;

#*Falcon)
#kitty -o ~/.config/kitty/kitty.conf --hold -- bash -c "cd $USERDIR && ./rezise.sh && cd $FALCONDIR && ./falcon.sh"
#;;

*Updates)
kitty -o ~/.config/kitty/kitty.conf -- bash -c "cd $USERDIR ; ./rezise.sh ; cd $USERDIR ; sudo ./updates.sh"
;;

*Wifi)
kitty -o ~/.config/kitty/kitty.conf -- bash -c "cd $USERDIR ; ./rezise.sh ; cd $USERDIR ; ./wifi.sh"
;;
        esac
