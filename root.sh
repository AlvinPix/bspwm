#!/bin/bash

# Author: Enríquez González https://github.com/AlvinPix
# instagram: @alvinpx_271
# facebook: @alvin.gonzalez.13139

# VARIABLE DATABASE AND OTHER THINGS
RUTE=$(pwd)

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

# CHECK ROOT USER
if [ $(id -u) -ne 0 ]; then
	echo ""
	echo -e "${White} [${Blue}i${White}] You must be root user to run the script"
exit
fi

install_addons () {
echo ""
echo -e "${White} [${Blue}i${White}] Last step installing the powerlevel10k, fzf, sudo-plugin, and others for the root user"
sleep 3
echo ""
cd ${RUTE} ; cp -r scripts /root
cd ${RUTE}/root ; cp -r .zshrc .p10k.zsh /root
cd /root ; git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo ""
cd /root/scripts ; git clone https://github.com/charitarthchugh/shell-color-scripts.git
rm -rf /root/scripts/shell-color-scripts/colorscripts
rm -rf /root/scripts/shell-color-scripts/colorscript.sh
cd /root/scripts ; mv colorscripts colorscript.sh /root/scripts/shell-color-scripts
chmod +x /root/scripts/shell-color-scripts/colorscript.sh ; cd /root/scripts/shell-color-scripts/colorscripts
echo ""
chmod +x * ; cd /root ; git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo ""
cd /root/scripts ; git clone https://github.com/pipeseroni/pipes.sh.git
echo ""
}

# CALLS
reset
install_addons
