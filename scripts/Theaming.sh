#!/bin/bash

# Author: Enríquez González https://github.com/AlvinPix
# instagram: @alvinpx_271
# facebook: @alvin.gonzalez.13139

# COLORS THE SCRIPT
Black='\033[1;30m'
Red='\033[1;31m'
Green='\033[1;32m'
Yellow='\033[1;33m'
Blue='\033[1;34m'
Purple='\033[1;35m'
Cyan='\033[1;36m'
White='\033[1;37m'
NC='\033[0m'
blue='\033[0;34m'
white='\033[0;37m'
lred='\033[0;31m'

# VARIABLES DATABASE
USERNAME=$(whoami)
THEMEDIR="/home/${USERNAME}/.themes"
POLYDIR="/home/${USERNAME}/.config/polybar/cuts"
CONDIR="/home/${USERNAME}"

# TRAPS CTRL-C
trap ctrl_c INT

# EXIT THE SCRIPT CTRL-C
function ctrl_c () {
echo ""
echo ""
echo -e "${Blue} ${White}[${Cyan}i${White}] Exiting the theming script"
exit 0
}

# BANNER THE SCRIPT
banner () {
echo -e "${White} ╔────────────────────────────────────────────────────────────────────╗     		  		  "
echo -e "${White} |${Blue} ████████╗██╗  ██╗███████╗ █████╗ ███╗   ███╗██╗███╗   ██╗ ██████╗ ${White} |    		  "
echo -e "${White} |${Blue} ╚══██╔══╝██║  ██║██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔════╝ ${White} |     		  "
echo -e "${White} |${Blue}    ██║   ███████║█████╗  ███████║██╔████╔██║██║██╔██╗ ██║██║  ███╗${White} |    		  "
echo -e "${White} |${Blue}    ██║   ██╔══██║██╔══╝  ██╔══██║██║╚██╔╝██║██║██║╚██╗██║██║   ██║${White} |    	          "
echo -e "${White} |${Blue}    ██║   ██║  ██║███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║╚██████╔╝${White} |    	          "
echo -e "${White} |${Blue}    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ${White} |    	          "
echo -e "${White} ┖────────────────────────────────────────────────────────────────────┙    		 	          "
echo -e "${Blue} ${White}[${Cyan}i${White}] Welcome ${Red}${USERNAME}${White} to theme launcher and mode! 		  "
echo -e "${Blue} ${White}[${Cyan}i${White}] If you want to exit the script use ${Red}[CTRL+C]                             "
echo -e "${Blue} ${White}[${Cyan}i${White}] What type of theme do you want to apply? 			  		  "
}

# THEAMING MODE SELECTOR
mode () {
clear
echo ""
banner
echo ""
echo -e "${Blue} [${Cyan}1${Blue}] Normal mode"
echo ""
echo -e "${White}  In this mode you can apply themes in normal mode."
echo -e "${White}  ideal for use while studying or playing."
echo ""
echo -e "${Blue} [${Cyan}2${Blue}] Penetration mode"
echo ""
echo -e "${White}  In this mode you can apply themes, but with an ideal penetration mode."
echo -e "${White}  To pentent HackTheBox, VulnHub, TryHackMe."
echo ""
echo -ne "${Blue} ▶ ${Red}"
read mode
case $mode in

1)
Normalthemes ;;

2)
Penetrationthemes ;;

*)
echo ""
echo -e "${Blue} ${White}[${Cyan}i${White}] Invalid option, use numbers"
sleep 2
mode
esac
}

Normalthemes () {
echo ""
echo -e "${Blue} ${White}[${Cyan}i${White}] Loading themes normal mode..."
echo ""
echo -e "${Blue} [${Cyan}1${Blue}] Zenitsu"
echo -e "${Blue} [${Cyan}2${Blue}] Raven"
echo -e "${Blue} [${Cyan}3${Blue}] Simon"
echo -e "${Blue} [${Cyan}4${Blue}] Camila"
echo -e "${Blue} [${Cyan}5${Blue}] Ryan"
echo -e "${Blue} [${Cyan}6${Blue}] Esmeralda"
echo -e "${Blue} [${Cyan}7${Blue}] Xavier"
echo -e "${Blue} [${Cyan}8${Blue}] Nami"
echo ""
echo -ne "${Blue} ▶ ${Red}"
read nmtheme
case $nmtheme in

1)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Zenitsu]${NC}"
cd ${THEMEDIR}/Zenitsu/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Zenitsu
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Zenitsu/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Zenitsu/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Zenitsu]${White} theme applied correctly"
sleep 2
exit 0 ;;

2)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Raven]${NC}"
cd ${THEMEDIR}/Raven/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Raven
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Raven/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Raven/wallpapers/wal-0.png
echo ""
bspc wm -r
echo -e " ${White}[${Cyan}i${White}] ${Red}[Raven]${White} theme applied correctly"
sleep 2
exit 0 ;;

3)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Simon]${NC}"
cd ${THEMEDIR}/Simon/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Simon
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Simon/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Simon/wallpapers/wal-0.png
echo ""
bspc wm -r
echo -e " ${White}[${Cyan}i${White}] ${Red}[Simon]${White} theme applied correctly"
sleep 2
exit 0 ;;

4)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Camila]${NC}"
cd ${THEMEDIR}/Camila/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Camila
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Camila/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Camila/wallpapers/wal-0.png
echo ""
bspc wm -r
echo -e " ${White}[${Cyan}i${White}] ${Red}[Camila]${White} theme applied correctly"
sleep 2
exit 0 ;;

5)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Ryan]${NC}"
cd ${THEMEDIR}/Ryan/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Ryan
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Ryan/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Ryan/wallpapers/wal-0.png
echo ""
bspc wm -r
echo -e " ${White}[${Cyan}i${White}] ${Red}[Ryan]${White} theme applied correctly"
sleep 2
exit 0 ;;

6)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Esmeralda]${NC}"
cd ${THEMEDIR}/Esmeralda/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Esmeralda
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Esmeralda/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Esmeralda/wallpapers/wal-0.png
echo ""
bspc wm -r
echo -e " ${White}[${Cyan}i${White}] ${Red}[Esmeralda]${White} theme applied correctly"
sleep 2
exit 0 ;;

7)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Xavier]${NC}"
cd ${THEMEDIR}/Xavier/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Xavier
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Xavier/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Xavier/wallpapers/wal-0.png
echo ""
bspc wm -r
echo -e " ${White}[${Cyan}i${White}] ${Red}[Xavier]${White} theme applied correctly"
sleep 2
exit 0 ;;

8)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme ${Red}[Nami]${NC}"
cd ${THEMEDIR}/Nami/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Nami
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Nami/polybar
cp user_modules.ini colors.ini config.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
echo ""
betterlockscreen -u ${THEMEDIR}/Nami/wallpapers/wal-0.png
echo ""
bspc wm -r
echo -e " ${White}[${Cyan}i${White}] ${Red}[Nami]${White} theme applied correctly"
sleep 2
exit 0 ;;

*)
echo ""
echo -e "${Blue} ${White}[${Cyan}i${White}] Invalid option, use numbers"
sleep 2
mode
esac
}

Penetrationthemes () {
echo ""
echo -e "${Blue} ${White}[${Cyan}i${White}] Loading themes penetration mode..."
echo ""
echo -e "${Blue} [${Cyan}1${Blue}] Zenitsu"
echo -e "${Blue} [${Cyan}2${Blue}] Raven"
echo -e "${Blue} [${Cyan}3${Blue}] Simon"
echo -e "${Blue} [${Cyan}4${Blue}] Camila"
echo -e "${Blue} [${Cyan}5${Blue}] Ryan"
echo -e "${Blue} [${Cyan}6${Blue}] Esmeralda"
echo -e "${Blue} [${Cyan}7${Blue}] Xavier"
echo -e "${Blue} [${Cyan}8${Blue}] Nami"
echo ""
echo -ne "${Blue} ▶ ${Red}"
read penetrationntheme
case $penetrationntheme in

1)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Zenitsu]${NC}"
cd ${THEMEDIR}/Zenitsu/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Zenitsu
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Zenitsu/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Zenitsu/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Zenitsu/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Zenitsu/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Zenitsu]${White} theme applied correctly"
sleep 2
exit 0 ;;

2)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Raven]${NC}"
cd ${THEMEDIR}/Raven/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Raven
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Raven/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Raven/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Raven/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Raven/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Raven]${White} theme applied correctly"
sleep 2
exit 0 ;;

3)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Simon]${NC}"
cd ${THEMEDIR}/Simon/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Simon
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Simon/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Simon/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Simon/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Simon/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Simon]${White} theme applied correctly"
sleep 2
exit 0 ;;

4)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Camila]${NC}"
cd ${THEMEDIR}/Camila/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Camila
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Camila/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Camila/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Camila/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Camila/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Camila]${White} theme applied correctly"
sleep 2
exit 0 ;;

5)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Ryan]${NC}"
cd ${THEMEDIR}/Ryan/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Ryan
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Ryan/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Ryan/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Ryan/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Ryan/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Ryan]${White} theme applied correctly"
sleep 2
exit 0 ;;

6)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Esmeralda]${NC}"
cd ${THEMEDIR}/Esmeralda/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Esmeralda
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Esmeralda/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Esmeralda/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Esmeralda/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Esmeralda/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Esmeralda]${White} theme applied correctly"
sleep 2
exit 0 ;;

7)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Xavier]${NC}"
cd ${THEMEDIR}/Xavier/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Xavier
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Xavier/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Xavier/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Xavier/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Xavier/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Xavier]${White} theme applied correctly"
sleep 2
exit 0 ;;

8)
echo ""
echo -e " ${White}[${Cyan}i${White}] Loading theme penetration mode ${Red}[Nami]${NC}"
cd ${THEMEDIR}/Nami/kitty
cp color.ini ${CONDIR}/.config/kitty
cd ${THEMEDIR}/Nami
cp bspwmrc ${CONDIR}/.config/bspwm
cd ${THEMEDIR}/Nami/polybar
cp user_modules.ini colors.ini ${CONDIR}/.config/polybar/cuts
cp colors.rasi ${CONDIR}/.config/polybar/cuts/scripts/rofi
cd ${THEMEDIR}/Nami/bar_pentest
cp config.ini ${CONDIR}/.config/polybar/cuts
cd ${THEMEDIR}/Nami/scripts
cp ethernet_status.sh machine_target.sh vpn_status.sh ${CONDIR}/.config/polybar/cuts/scripts
echo ""
betterlockscreen -u ${THEMEDIR}/Nami/wallpapers/wal-0.png
echo ""
bspc wm -r
#polybar-msg cmd restart
echo -e " ${White}[${Cyan}i${White}] ${Red}[Nami]${White} theme applied correctly"
sleep 2
exit 0 ;;


*)
echo ""
echo -e "${Blue} ${White}[${Cyan}i${White}] Invalid option, use numbers"
sleep 2
mode
esac
}

# CALL MENUS THE SCRIPT THEMES AND RESET
reset
mode
