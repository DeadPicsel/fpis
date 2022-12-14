#!/bin/bash
# Bash Text Formatting
BLACK="\e[30m"
BLUE="\e[34m"
CYAN="\e[36m"
GRAY="\e[90m"
GREEN="\e[32m"
LBLUE="\e[94m"
LCYAN="\e[96m"
LGRAY="\e[37m"
LGREEN="\e[92m"
LMAGENTA="\e[95m"
LRED="\e[91m"
LYELLOW="\e[93m"
MAGENTA="\e[35m"
RED="\e[31m"
WHITE="\e[97m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"

printf "${LYELLOW}#############################################${ENDCOLOR}\n"
printf "${RED}Fedora Post Installation Script by DeadPicsel\n"
printf "${LYELLOW}#############################################${ENDCOLOR}\n"

# Move Working Directory
cd ~

# Make Directories
printf "${LBLUE}\nWould you like to create directories? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    mkdir ~/Apps
    mkdir ~/Apps/Linux
    mkdir ~/Apps/Windows
    mkdir ~/Pictures/Wallpapers
    mkdir ~/VPN
    printf "${GREEN}Directories Created!\n"
else
    printf "${RED}Directories Not created\n"
fi

# Basic Update
printf "${LBLUE}\nWould you like to run a Basic System Update? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo dnf update
sudo dnf upgrade
    printf "${GREEN}Basic System Update Completed!\n"
else
    printf "${RED}Basic System Update Not Completed!\n"
fi

# System Applications
printf "${LBLUE}\nWould you like to install System Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo dnf install guake
sudo dnf install p7zip
sudo dnf install snapd
sudo dnf install unrar
sudo dnf install wget
sudo dnf install wine
    printf "${GREEN}System Applications Installed!\n"
else
    printf "${RED}System Applications Not Installed!\n"
fi

# Graphics Applications
printf "${LBLUE}\nWould you like to install Graphics Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo dnf install gimp
    printf "${GREEN}Graphics Applications Installed!\n"
else
    printf "${RED}Graphics Applications Not Installed!\n"
fi

# Internet Applications
printf "${LBLUE}\nWould you like to install Internet Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo dnf install google-chrome
sudo dnf install deluge
sudo dnf install filezilla
    printf "${GREEN}Internet Applications Installed!\n"
else
    printf "${RED}Internet Applications Not Installed!\n"
fi

# Multimedia Applications
printf "${LBLUE}\nWould you like to install Multimedia Applications? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo dnf install audacious
sudo dnf install vlc
    printf "${GREEN}Multimedia Applications Installed!\n"
else
    printf "${RED}Multimedia Applications Not Installed!\n"
fi

# Reboot Prompt
printf "${LBLUE}\nWould you like to restart? ${WHITE}[Y/n]${ENDCOLOR}\n"
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
sudo reboot -f
else
    printf "${RED}Reboot Declined!\n"
fi
