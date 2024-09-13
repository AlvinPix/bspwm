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

# PRESENT THE SCRIPT
banner () {
echo -e "${White}        \****__              ____					"
echo -e "${White}          |    *****\_      --/ *\-__					"
echo -e "${White}          /_          (_    ./ ,/----'					"
echo -e "${Blue} Kali Linux${White} \__         (_./  /					"
echo -e "${Blue}  By AlvinPix${White}  \__           \___----^__        		"
echo -e "${White}                _/   _                  \     ${Blue} ⇅${White} DPKG	"
echo -e "${White}         |    _/  __/ )\"\ _____         *\				"
echo -e "${White}         |\__/   /    ^ ^       \____      )				"
echo -e "${White}          \___--/                    \______)				"
echo ""
echo -e "${Blue} ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗	"
echo -e "${Blue} ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝	"
echo -e "${Blue} ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗	"
echo -e "${Blue} ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝	"
echo -e "${Blue} ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗	"
echo -e "${Blue}  ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝	"
}

# PRINT BANNER AND UPDATE KALI
update () {
echo ""
banner
echo ""
echo -e "${Blue} [${Yellow}⇅${Blue}]${White} Checking nala from-end apt"
if which nala >/dev/null; then
	sleep 1
	echo ""
	echo -e "${Blue} [${Cyan}i${Blue}]${White} Nala is installed on your system..."
	echo -e "${Blue} [${Cyan}i${Blue}]${White} What do you want to do after the update?"
	echo ""
	echo -e "${Blue} [${Cyan}N${Blue}] Nothing"
	echo -e "${Blue} [${Cyan}R${Blue}] Restart"
	echo -e "${Blue} [${Cyan}H${Blue}] Shutdown"
	echo ""
	echo -ne "${White} > "
	read Quest
	case $Quest in
	N)
	echo ""
	echo -e "${Blue}[${Yellow}⇅${Blue}]${White} Updating system"
	sudo nala update>/dev/null
	sudo nala list --upgradable
	sleep 3
	sudo nala upgrade -y
	exit 0
	;;
	R)
	echo ""
	echo -e "${Blue}[${Yellow}⇅${Blue}]${White} Updating system and reboot"
	sudo nala update>/dev/null
        sudo nala list --upgradable
	sleep 3
	sudo nala upgrade -y && sudo systemctl reboot
	exit 0
	;;
	H)
	echo ""
	echo -e "${Blue}[${Yellow}⇅${Blue}]${White} Updating system and shutting down"
	sudo nala update>/dev/null
        sudo nala list --upgradable
	sleep 3
	sudo nala upgrade -y && sudo shutdown now
	exit 0
	;;
	*)
	echo ""
	echo -e "${Blue}[${Yellow}⇅${Blue}]${White} Invalid option, use the capital letters N/R/H launch the script again!"
	sleep 2
	exit 1
esac
else
	echo ""
	sleep 1
	echo -e "${Blue}[${Cyan}i${Blue}]${White} Installing nala from-end apt"
	sudo apt install nala -y
	echo ""
	echo -e "${Blue} [${Cyan}i${Blue}]${White} Nala is already installed, launch the script again!"
	sleep 1
	exit 0
fi
}


# CALL UPDATE AND RESET
reset
update
