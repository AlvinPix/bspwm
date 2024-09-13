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

# traps ctrl-x
trap ctrl_c INT

# Exit ctrl-c
function ctrl_c () {
echo -e "${Cyan} [i]${White} Exiting the script"
exit 1
}

# USERNAME
user=$(whoami)

# HOST DISCOVERY
lanip=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')
lanip6=$(ip addr | grep 'state UP' -A4 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')
publicip=$(dig +short myip.opendns.com @resolver1.opendns.com)
hostn=$(host "$publicip" | awk '{print $5}' | sed 's/.$//')

# BANNER PRESENT THE SCRIPT
banner () {
echo -e "${White} ╔──────────────────────────╗									"
echo -e "${White} |${Purple} ██╗    ██╗██╗███████╗██╗${White} |${Red} [ ]${White} ${lanip}			"
echo -e "${White} |${Purple} ██║    ██║██║██╔════╝██║${White} |${Red} [󰀻 ]${White} ${lanip6}			"
echo -e "${White} |${Purple} ██║ █╗ ██║██║█████╗  ██║${White} |${Red} []${White} ${user}			"
echo -e "${White} |${Purple} ██║███╗██║██║██╔══╝  ██║${White} |${Red} [CTRL+C]${White} Exit			"
echo -e "${White} |${Purple} ╚███╔███╔╝██║██║     ██║${White} |							"
echo -e "${White} |${Purple}  ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝${White} |							"
echo -e "${White} ┖──────────────────────────┙									"
}

# MAIN MENU
wifi () {
echo ""
clear
banner
echo ""
echo -e "${Cyan} [⇅]${White} Checking if nmcli is installed..."
if which nmcli >/dev/null; then
	sleep 1
	echo ""
	echo -e "${Cyan} [i]${White} Nmcli is installed on your system!"
	echo -e "${Cyan} [i]${White} Showing nearby WiFi networks"
	echo ""
	nmcli dev wifi list
	echo ""
	echo -e "${Cyan} [R] Refresh"
	echo -e "${Cyan} [C] Connect"
	echo -e "${Cyan} [P] Connect with password"
	echo ""
	echo -e "${Cyan} [F] Deactivate"
	echo -e "${Cyan} [O] Enable"
	echo ""
	echo -ne "${White} > "
	read wi
	case $wi in
	R)
	echo ""
	wifi ;;
	C)
	echo ""
	echo -ne "${Cyan} [⇅]${White} Wi-Fi network name > ${Red}"
	read oneconnectname
	echo ""
	nmcli dev wifi connect "${oneconnectname}"
	sleep 2
	wifi ;;
	P)
	echo ""
	echo -ne "${Cyan} [⇅]${White} Wi-Fi network name > ${Red}"
	read passwdconnectname
	echo -ne "${Cyan} [⇅]${White} Wi-Fi network password > ${Red}"
	read passwd
	echo ""
	nmcli dev wifi connect "${passwdconnectname}" password "${passwd}"
	sleep 2
	wifi ;;
	F)
	echo ""
	echo -e "${Cyan} [⇅]${White} Disabling WiFi..."
	nmcli radio wifi off
	sleep 2
	wifi ;;
	O)
	echo ""
	echo -e "${Cyan} [⇅]${White} Enabling WiFi..."
	nmcli radio wifi on
	sleep 2
	wifi ;;
	*)
	echo ""
	echo -e "${Cyan} [⇅]${White} Invalid option, use the capital letters R/C/P/F/O"
	sleep 2
	wifi ;;
esac
else
	echo ""
	echo -e "${Cyan} [i]${White} Install nmcli on your system!"
	sudo apt install nmcli -y
	sleep 2
	echo ""
	echo -e "${Cyan} [i]${White} Nmcli is installed, launch the script again!"
	exit 1
fi
}

# CALL WIFI AND RESET
reset
wifi
