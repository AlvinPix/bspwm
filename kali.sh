#!/bin/bash

# COLOR USE THE SCRIPT
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
IWhite="\[\033[0;97m\]"

# VARIABLE DATABASE AND OTHER THINGS
USERNAME=$(whoami)
LOCALPATH="/home/${USERNAME}"
KERNEL=$(uname -r)
DISTRIBUTION=$(uname -o)
HOST=$(uname -n)
BIT=$(uname -m)
RUTE=$(pwd)

# SCRIPT PRESENTATION
banner () {
echo -e "${White} ╔───────────────────────────────────────────────╗                 	"
echo -e "${White} |${Cyan} ██████╗ ███████╗██████╗ ██╗    ██╗███╗   ███╗${White} |      "
echo -e "${White} |${Cyan} ██╔══██╗██╔════╝██╔══██╗██║    ██║████╗ ████║${White} |      "
echo -e "${White} |${Cyan} ██████╔╝███████╗██████╔╝██║ █╗ ██║██╔████╔██║${White} |      "
echo -e "${White} |${Cyan} ██╔══██╗╚════██║██╔═══╝ ██║███╗██║██║╚██╔╝██║${White} |	"
echo -e "${White} |${Cyan} ██████╔╝███████║██║     ╚███╔███╔╝██║ ╚═╝ ██║${White} |	"
echo -e "${White} |${Cyan} ╚═════╝ ╚══════╝╚═╝      ╚══╝╚══╝ ╚═╝     ╚═╝${White} |	"
echo -e "${White} ┖───────────────────────────────────────────────┙			"
echo ""
echo -e "${White} [${Blue}i${White}] BSPWM | Hacker environment automation script."
echo -e "${White} [${Blue}i${White}] Enríquez González (Aka. AlvinPix)"
echo ""
echo -e "${White} [${Blue}i${White}] Installation will begin soon."
echo ""
sleep 4
echo -e "${White} [${Blue}i${White}] Hello ${Red}${USERNAME}${White}, This is the bspwm installation script for kali linux"
}

# INSTALLATION OF MISSING DEPENDENCIES
missing_dependencies () {
echo ""
echo -e "${White} [${Blue}i${White}] Step 9 installing missing dependencies"
sleep 2
echo ""
sudo apt install rofi fonts-firacode fonts-cantarell lxappearance nitrogen lsd betterlockscreen flameshot git net-tools xclip xdotool -y
echo ""
sudo apt install scrub bat tty-clock openvpn feh pulseaudio-utils git lolcat -y
echo ""
}

# INSTALL BSPWM KALI LINUX SETUP
setup () {
clear
echo ""
banner
sleep 1
echo -ne "${White} [${Blue}!${White}] Do you want to continue with the installation? Y|N ▶ ${Red}"
read quest
if [ $quest = Y ]; then
	echo ""
	echo -e "${White} [${Blue}i${White}] Step 1 checking if bspwm and sxhkd are installed"
	sleep 2
	if which bspwm >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] BSPWM is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/bspwm
		cp -r bspwm ${LOCALPATH}/.config/bspwm
		chmod +x ${LOCALPATH}/.config/bspwm/bspwmrc
	else
		echo ""
		echo -e "${White} [${Red}-${White}] BSPWM is not installed, installing bspwm"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install bspwm -y
		echo ""
		echo -e "${White} [${Blue}+${White}] BSPWM is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/bspwm
                cp -r bspwm ${LOCALPATH}/.config/bspwm
		chmod +x ${LOCALPATH}/.config/bspwm/bspwmrc
	fi
	if which sxhkd >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] SXHKD is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/sxhkd
		cp -r sxhkd ${LOCALPATH}/.config/sxhkd
		chmod +x ${LOCALPATH}/.config/sxhkd/sxhkdrc
	else
		echo ""
		echo -e "${White} [${Red}-${White}] SXHKD is not installed, installing sxhkd"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install sxhkd -y
		echo ""
		echo -e "${White} [${Blue}+${White}] SXHKD is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/sxhkd
                cp -r sxhkd ${LOCALPATH}/.config/sxhkd
                chmod +x ${LOCALPATH}/.config/sxhkd/sxhkdrc
	fi
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 2 installing fonts"
		sleep 2
		echo ""
		echo -e "${White} [${Blue}+${White}] Installing configuration, the fonts"
		sleep 3
		echo ""
		cd ${RUTE}
		sudo rm -rf ${LOCALPATH}/.fonts
		cp -r .fonts ${LOCALPATH}
		sudo cp -r .fonts /usr/share/fonts
		echo -e "${White} [${Blue}+${White}] Installed fonts"
		sleep 2
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 3 check if the kitty terminal is installed"
		sleep 2

	if which kitty >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] KITTY is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/kitty
                cp -r kitty ${LOCALPATH}/.config/kitty
	else
		echo ""
		echo -e "${White} [${Red}-${White}] KITTY is not installed, installing kitty"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install kitty -y
		echo ""
		echo -e "${White} [${Blue}+${White}] KITTY is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/kitty
                cp -r kitty ${LOCALPATH}/.config/kitty
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 4 check if the picom compositor is installed"
		sleep 2
	fi
	if which picom >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] PICOM is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/picom
                cp -r picom ${LOCALPATH}/.config/picom
	else
		echo ""
		echo -e "${White} [${Red}-${White}] PICOM is not installed, installing picom compositor"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install picom -y
		echo ""
		echo -e "${White} [${Blue}+${White}] PICOM is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
                sudo rm -rf ${LOCALPATH}/.config/picom
                cp -r picom ${LOCALPATH}/.config/picom
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 5 check if the neofetch is installed"
		sleep 2
	fi
	if which neofetch >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] NEOFETCH is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/neofetch
                cp -r neofetch ${LOCALPATH}/.config/neofetch
	else
		echo ""
		echo -e "${White} [${Red}-${White}] NEOFETCH is not installed, installing neofetch"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install neofetch -y
		echo ""
		echo -e "${White} [${Blue}+${White}] NEOFETCH is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/neofetch
                cp -r neofetch ${LOCALPATH}/.config/neofetch
                echo ""
                echo -e "${White} [${Blue}i${White}] Step 6 check if the ranger is installed"
                sleep 2
	fi
	if which ranger >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] RANGER is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/ranger
                cp -r ranger ${LOCALPATH}/.config/ranger
	else
		echo ""
		echo -e "${White} [${Red}-${White}] RANGER is not installed, installing ranger"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install ranger -y
		echo ""
		echo -e "${White} [${Blue}+${White}] RANGER is installed, installing configuration"
                sleep 2
                cd ${RUTE}/.config
                sudo rm -rf ${LOCALPATH}/.config/ranger
                cp -r ranger ${LOCALPATH}/.config/ranger
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 7 check if the cava is installed"
                sleep 2
	fi
	if which cava >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] CAVA is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
		sudo rm -rf ${LOCALPATH}/.config/cava
                cp -r cava ${LOCALPATH}/.config/cava
	else
		echo ""
		echo -e "${White} [${Red}-${White}] CAVA is not installed, installing cava"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install cava -y
		echo ""
		echo -e "${White} [${Blue}+${White}] CAVA is installed, installing configuration"
		sleep 2
                cd ${RUTE}/.config
                sudo rm -rf ${LOCALPATH}/.config/cava
                cp -r cava ${LOCALPATH}/.config/cava
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 8 check if the polybar is installed"
		sleep 2
	fi
	if which polybar >/dev/null; then
		echo ""
		echo -e "${White} [${Blue}+${White}] POLYBAR is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
                sudo rm -rf ${LOCALPATH}/.config/polybar
                cp -r polybar ${LOCALPATH}/.config/polybar
		chmod +x ${LOCALPATH}/.config/polybar/cuts/launch.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/checkupdates
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/color-switch.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/colors-dark.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/colors-light.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/launcher.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/powermenu.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/pywal.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/random.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/script-manager.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/style-switch.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/styles.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/updates.sh
	else
		echo ""
		echo -e "${White} [${Red}-${White}] POLYBAR is not installed, installing polybar"
		sleep 2
		echo ""
		sudo apt update
		echo ""
		sudo apt install polybar -y
		echo ""
		echo -e "${White} [${Blue}+${White}] POLYBAR is installed, installing configuration"
		sleep 2
		cd ${RUTE}/.config
                sudo rm -rf ${LOCALPATH}/.config/polybar
                cp -r polybar ${LOCALPATH}/.config/polybar
		chmod +x ${LOCALPATH}/.config/polybar/launch.sh
		chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/checkupdates
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/color-switch.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/colors-dark.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/colors-light.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/launcher.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/powermenu.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/pywal.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/random.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/script-manager.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/style-switch.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/styles.sh
                chmod +x ${LOCALPATH}/.config/polybar/cuts/scripts/updates.sh
	fi
		missing_dependencies
		echo -e "${White} [${Blue}i${White}] Step 10 installing bspwm themes"
		sleep 2
		cd ${RUTE}
		cp -r .themes ${LOCALPATH}
		chmod +x ${LOCALPATH}/.themes/Camila/bspwmrc		#8
		chmod +x ${LOCALPATH}/.themes/Esmeralda/bspwmrc		#7
		chmod +x ${LOCALPATH}/.themes/Nami/bspwmrc		#6
		chmod +x ${LOCALPATH}/.themes/Raven/bspwmrc		#5
		chmod +x ${LOCALPATH}/.themes/Ryan/bspwmrc		#4
		chmod +x ${LOCALPATH}/.themes/Simon/bspwmrc		#3
		chmod +x ${LOCALPATH}/.themes/Xavier/bspwmrc		#2
		chmod +x ${LOCALPATH}/.themes/Zenitsu/bspwmrc		#1
		echo ""
		echo -e "${White} [${Blue}+${White}] Installing theme ${Red}Camila"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Camila/scripts/ethernet_status.sh
		chmod +x ${LOCALPATH}/.themes/Camila/scripts/machine_target.sh
		chmod +x ${LOCALPATH}/.themes/Camila/scripts/vpn_status.sh
		echo -e "${White} [${Blue}+${White}] Installing theme ${Cyan}Esmeralda"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Esmeralda/scripts/ethernet_status.sh
                chmod +x ${LOCALPATH}/.themes/Esmeralda/scripts/machine_target.sh
                chmod +x ${LOCALPATH}/.themes/Esmeralda/scripts/vpn_status.sh
		echo -e "${White} [${Blue}+${White}] Installing theme ${Black}Nami"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Nami/scripts/ethernet_status.sh
                chmod +x ${LOCALPATH}/.themes/Nami/scripts/machine_target.sh
                chmod +x ${LOCALPATH}/.themes/Nami/scripts/vpn_status.sh
		echo -e "${White} [${Blue}+${White}] Installing theme ${Purple}Raven"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Raven/scripts/ethernet_status.sh
                chmod +x ${LOCALPATH}/.themes/Raven/scripts/machine_target.sh
                chmod +x ${LOCALPATH}/.themes/Raven/scripts/vpn_status.sh
		echo -e "${White} [${Blue}+${White}] Installing theme ${Green}Ryan"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Ryan/scripts/ethernet_status.sh
                chmod +x ${LOCALPATH}/.themes/Ryan/scripts/machine_target.sh
                chmod +x ${LOCALPATH}/.themes/Ryan/scripts/vpn_status.sh
		echo -e "${White} [${Blue}+${White}] Installing theme ${Blue}Simon"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Simon/scripts/ethernet_status.sh
                chmod +x ${LOCALPATH}/.themes/Simon/scripts/machine_target.sh
                chmod +x ${LOCALPATH}/.themes/Simon/scripts/vpn_status.sh
		echo -e "${White} [${Blue}+${White}] Installing theme Xavier"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Xavier/scripts/ethernet_status.sh
                chmod +x ${LOCALPATH}/.themes/Xavier/scripts/machine_target.sh
                chmod +x ${LOCALPATH}/.themes/Xavier/scripts/vpn_status.sh
		echo -e "${White} [${Blue}+${White}] Installing theme ${Yellow}Zenitsu"
		sleep 2
		chmod +x ${LOCALPATH}/.themes/Zenitsu/scripts/ethernet_status.sh
                chmod +x ${LOCALPATH}/.themes/Zenitsu/scripts/machine_target.sh
                chmod +x ${LOCALPATH}/.themes/Zenitsu/scripts/vpn_status.sh
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 11 installing bspwm scripts"
		sleep 2
		cd ${RUTE}
		cp -r scripts ${LOCALPATH}
		chmod +x ${LOCALPATH}/scripts/Theaming.sh
		chmod +x ${LOCALPATH}/scripts/colorscript.sh
		chmod +x ${LOCALPATH}/scripts/rezise.sh
		chmod +x ${LOCALPATH}/scripts/updates.sh
		#chmod +x ${LOCALPATH}/scripts/volume.sh
		chmod +x ${LOCALPATH}/scripts/wifi.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/camila_wal.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/esmeralda_wal.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/nami_wal.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/raven_wal.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/ryan_wal.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/simon_wal.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/xavier_wal.sh
		chmod +x ${LOCALPATH}/scripts/wall-scripts/zenitsu_wal.sh
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 12 Installing the powerlevel10k, fzf, sudo-plugin, and others for the normal user"
		sleep 2
		echo ""
		cd ${RUTE}
		cp -r .zshrc .p10k.zsh ${LOCALPATH}
		cd /usr/share ; sudo mkdir -p zsh-sudo
		cd zsh-sudo ; sudo wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
		echo ""
		cd ; git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
		echo ""
		cd ${LOCALPATH}/scripts ; git clone https://github.com/charitarthchugh/shell-color-scripts.git
		echo ""
		sudo rm -rf ${LOCALPATH}/scripts/shell-color-scripts/colorscripts
		sudo rm -rf ${LOCALPATH}/scripts/shell-color-scripts/colorscript.sh
		cd ${LOCALPATH}/scripts
		mv colorscripts colorscript.sh ${LOCALPATH}/scripts/shell-color-scripts
		chmod +x ${LOCALPATH}/scripts/shell-color-scripts/colorscript.sh
		cd ${LOCALPATH}/scripts/shell-color-scripts/colorscripts
		chmod +x *
		cd
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
		~/.fzf/install
		echo ""
		cd ${LOCALPATH}/scripts ; git clone https://github.com/pipeseroni/pipes.sh.git
		echo ""
		echo -e "${White} [${Blue}i${White}] Step 13 clone ghostscript and falcón repositories"
		sleep 2
		echo ""
		#cd ${LOCALPATH}/scripts ; git clone https://github.com/AlvinPix/Ghost-script.git
		echo ""
		#cd ${LOCALPATH}/scripts ; git clone https://github.com/AlvinPix/Falcon.git
		echo ""
fi
}


# CALLS THE SCRIPT
reset
setup

