# !/bin/bash



echo """
+---------------------------------------------------------------------------------+
|                            CANO23&                                              |
+---------------------------------------------------------------------------------+
      _  __     _ _
     | |/ /    | (_)
     | ' / __ _| |_|
     |  < / _\` | | |
     | . \ (_| | | |
     |_|\_\__,_|_|_|  
                     
                        ___           _        _ _           
                      |_ _|_ __  ___| |_ __ _| | | ___ _ __ 
                       | || '_ \/ __| __/ \` | | |/ _ \ '__|
                       | || | | \__ \ || (_| | | |  __/ |   
                      |___|_| |_|___/\__\__,_|_|_|\___|_|   
"""
echo "--------------------------------------------------------------------------------"
	echo "|                           INIT                                           |"
	echo "----------------------------------------------------------------------------"
echo              

### GITHUB HACK EXTRAS
### https://github.com/Err0r-ICA/TermuxCyberArmy
### https://github.com/gnarlyhaze/Kali-Update-Script/blob/master/Reveal_Wifi_Password_Linux.sh
### oh my bash  ** https://github.com/Err0r-ICA/TermuxCyberArmy


echo "UPDATE"
printf "${LGREEN}KALI LINUX UPDATE && UPGRADE FULL${NC}\n"
apt-get update -y  && apt-get upgrade -y  && apt-get dist-upgrade -y 
echo "UPDATE"
# Correct "The following signatures were invalid" EXPKEYSIG error upon trying to run updates (This will occur if you haven't updated your Kali ISO for awhile):

### END  ###

echo "VALIDATE KEY"
printf "KEYRING----"
wget -q -O - archive.kali.org/archive-key.asc | apt-key add
echo "listo"

echo "NEXT....."
printf "${LGREEN}LINUX  LOGO ${NC}\n"
sudo apt -qq install -y screenfetch linuxlogo #used to generate one of those nifty terminal theme information + ASCII distribution logos
echo ""
screenfetch
echo "FINISH"

### END  ###

echo "AUTOCLEAN"
printf "${LGREEN}AUTOCLEAN && CLEAN ${NC}\n"
apt-get autoclean -y  && apt-get clean -y 
echo "AUTOCLEAN"


### END  ###

echo "NEXT....."
printf "${LGREEN}COLOR ALERT LINES ${NC}\n"
RED='\033[0;31m' # Red
GREEN='\033[0;32m' # Green
LGREEN='\033[1;32m' # Light Green 
NC='\033[0m' # No Color 
echo "FINISH"

### END  ###

#Correct errors from any previously failed installations (leave enabled):
echo "fix"
printf "${LGREEN}FIXXED PACKGES${NC}\n"
sudo apt --fix-broken install -y
sudo dpkg --configure -a
echo "fix"

### Install Utility applications
echo "INSTALL SOFTWARE"
printf "UTILITIES"
sudo apt install -y gdebi #GUI for installing .deb files
sudo apt install -y sysvinit-utils
#sudo apt install -y gnome-tweak-tool #OS option editor
#sudo apt install -y alacarte #Applications menu customization options
#sudo apt install -y orage #Calendar
sudo apt install -y git git-core #github commandline
sudo apt install -y ca-certificates # resolve issue where GitHub's SSL certificate isn't trusted
#sudo apt install -y ack #Grep-like searching utility
sudo apt install -y unrar unace p7zip zip unzip p7zip-full p7zip-rar file-roller
#sudo apt install -y rar #no installation candidate
echo "FINISH UTILITIES"

echo "INSTALL TERMINAL KITTY"
sudo apt install -y kitty 
echo "FINISH KITTY"

echo "NEXT....."
printf "Installing Text Editors\n"
sudo apt install -y geany # My favorite light text editor
sudo apt install -y leafpad # Basic text editor
#sudo apt install -y gedit # Basic text editor
#sudo apt install -y mousepad #xfce text editor
sudo apt install -y joe # Text editor
sudo apt install -y install vim # text editor
sudo apt install -y emacs # classic text editor /usr/share/emacs/*/lisp/play contains games
echo "FINISH"

echo "NEXT....."
printf "AUTOCLEAN && REMOVE\n"
sudo apt autoclean -y
sudo apt autoremove -y
sudo apt clean
sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y 

echo "FINISH"

### END  ###

echo "NEXT....."
printf "${LGREEN}INSTALL SYNAPTICO${NC}\n"
sudo apt install -y synaptic # Synaptic package manager
sudo apt install -y  aptitude #Aptitude package manager
sudo aptitude update #update packages in Aptitude
sudo aptitude upgrade -y --full-resolver #upgrade packages in Aptitude
echo "FINISH"

### END ###

echo "NEXT....."
printf "${LGREEN}EASTER EGG${NC}\n"

echo ""
aptitude moo 
aptitude -v moo
aptitude -vv moo
aptitude -vvvvv moo
aptitude -vvvvvv moo
echo "FINISH"

### END  ###

echo "NEXT....."
printf "${LGREEN}// INSTALL${NC}\n"
sudo apt install -y unattended-upgrades
sudo unattended-upgrades
echo "FINISH"

### END  ###

echo "NEXT....."
printf "${LGREEN}LINUX  LOGO ${NC}\n"
sudo apt -qq install -y screenfetch linuxlogo #used to generate one of those nifty terminal theme information + ASCII distribution logos
echo ""
screenfetch
echo "FINISH"

### END  ###
echo "NEXT....."
printf "${LGREEN}INFORMATION KALI LINUX ${NC}\n"
lsb_release -irdc
printf "Kernal Version: ";uname -r
printf "Processor Type: ";uname -m
echo "FINISH"



### END  ###

echo "NEXT....."
printf "${LGREEN}// INSTALL TERMINAL ADDONS PLUS${NC}\n"
sudo apt install -y htop #improved top terminal task manager
sudo apt install -y curl  #improved top terminal task manager
sudo apt install -y gotop #improved top terminal task manager
sudo apt install -y undistract-me #notifications that watch for long running commands and create a popup when complete
sudo apt install -y uget #improved top terminal task manager


echo "FINISH"

### END  ###

echo "NEXT....."
printf "${LGREEN}// INSTALL SPEDDTEST COMAND LINC${NC}\n"
sudo apt install -y speedtest-cli #speedtest from command line
echo "FINISH"

### END  ###

echo "NEXT....."
printf "${LGREEN}// INSTALL MULTIMEDIA SOFTWARE${NC}\n"
sudo apt install -y clementine #Media player
sudo apt install -y vlc #Media player

echo "FINISH"

### END  ###

echo "NEXT....."
printf "${LGREEN}// INSTALL TO SPEECH MODULES${NC}\n"
sudo apt install -y espeak
sudo apt install -y flite
echo "FINISH"

### END  ###

### *//* ENVIROMENT DESKTOPS *//* ###
     ### /*  XFCE */* ###
    echo "NEXT....."
    printf "${LGREEN}// ENVIROMENT XFCE DESKTOP${NC}\n"
    sudo apt install -y kali-defaults kali-root-login desktop-base xfce4 xfce-keyboard-shortcuts xfce4-places-plugin xfce4-goodies
    sudo apt-get install xfce4-whiskermenu-plugin
    echo "FINISH"
        printf "${LGREEN}// END  INSTALL XFCE ${NC}\n"

### END  ###


### *//* ENVIROMENT DESKTOPS *//* ###
### /*  PLASMA  */* ###
    echo "NEXT....."
    printf "${LGREEN}// ENVIROMENT KDE PLASMA${NC}\n"
    sudo apt install -y kali-defaults kali-root-login desktop-base kde-plasma-desktop xorg xorg-xinit xorg-server 
    echo "FINISH"
        printf "${LGREEN}// END  INSTALL PLASMA KDE ${NC}\n"

### END  ###


## LXDE Desktop ##
# Install LXDE Desktop Environment:
#sudo apt install -y kali-defaults kali-root-login desktop-base lxde-core lxde 
# Remove LXDE:
#sudo apt-get remove lxde-core lxde

## GNOME Desktop ##
# How to install GNOME on Kali Linux:
#sudo apt install -y kali-defaults kali-root-login desktop-base gnome-core gnome-common
# Remove GNOME:
#sudo apt-get remove gnome-core

## Cinnamon Desktop ## This is also excellent
# Install Cinnamon Desktop Environment:
#sudo apt install -y kali-defaults kali-root-login desktop-base cinnamon cinnamon-control-center-data
# Remove Cinnamon Desktop Environment:
#apt-get remove cinnamon

## MATE Desktop (1) ##
#Install MATE Desktop Environment:
#sudo apt install -y kali-defaults kali-root-login desktop-base mate-core mate-desktop-environment mate-desktop-environment-extra
#sudo apt install -y mate-dock-applet mate-panel mozo #mozo is the MATE main menu editing tool
## MATE Desktop (2) ##
#echo "deb http://repo.mate-desktop.org/debian wheezy main" >> /etc/apt/sources.list && apt-get update
#apt-get --yes --quiet --allow-unauthenticated install mate-archive-keyring
# Remove MATE Desktop Environment:
#apt-get remove mate-core

##Budgie Desktop Environment##
#sudo apt install -y budgie-desktop

## Awesome Window Manager ##
#Install Awesome Window Manager:
#sudo apt install -y awesome awesome-extra

## FVWM Window Manager ##
#FVWM Window Manager:
#sudo apt install -y fvwm 

#Install i3 Window Manager (Use WindowsKey+Enter to open a new terminal window):
#sudo apt install -y  i3
#dpkg-reconfigure i3
#sudo apt install -y feh #Lightweight image viewer with command line options to set images as screen background.
#sudo apt install -y nitrogen #Wallpaper browsing and managing utility

#Mutter window manager:
#sudo apt install -y mutter #default window manager for gnome
#sudo apt install -y mutter #untested option

### Login Window Managers:
#LightDM Login Window Manager
#sudo apt install -y lightdm #lighter window manager default to Kali Light

#Install Slim Login Window Manager:
#sudo apt install -y  slim


echo "NEXT....."
printf "${LGREEN}// INSTALL KALI LINUX RECCOMEND INSTALLS${NC}\n"
sudo apt install -y  kali-linux-top10 #Install the top ten Kali Linux Utilities
sudo apt install -y nmap netcat # network exploration tool to perform security audits
sudo apt install -y firewalk #traceroute through firewall and find open ports

echo "FINISH"

### END  ###

echo "NEXT....."
printf "${LGREEN}// INSTALL INULITITIES PROGRAMS ${NC}\n"
sudo apt install -y fortunes-min #minimum fortunes
sudo apt install -y xcowsay cowsay #this is an important package -needs to be configured in Kali
sudo apt install -y cmatrix #this is an important package -needs to be configured in Kali
sudo apt install -y tmux #this is an important package -needs to be configured in Kali
sudo gem install lolcat
sudo apt install -y pacman pacman4console #Pacman game
sudo apt install -y sl #terminal steam locamotive
echo "FINISH"

### END  ###

echo "UPDATE"
printf "${LGREEN}KALI LINUX UPDATE && UPGRADE FULL${NC}\n"
apt-get update -y  && apt-get upgrade -y  && apt-get dist-upgrade -y 
echo "UPDATE"
# Correct "The following signatures were invalid" EXPKEYSIG error upon trying to run updates (This will occur if you haven't updated your Kali ISO for awhile):


echo "AUTOCLEAN"
printf "${LGREEN}AUTOCLEAN && CLEAN ${NC}\n"
apt-get autoclean -y  && apt-get clean -y 
echo "AUTOCLEAN"

echo "fix"
printf "${LGREEN}FIXXED PACKGES${NC}\n"
sudo apt --fix-broken install -y
sudo dpkg --configure -a
echo "fix"
### END ###

### Prompt user to restart system after completing updates (leave enabled):
echo ""
cd /usr/games/ && ./sl 
cd /usr/games/ && ./xcowsay "Hello $USER! Thanks for waiting - Your updates have completed!" 
printf "${LGREEN}Updates Completed - Consider restarting the system!${NC}\n"
cd /usr/games/ && ./cowsay "Hello $USER! Thanks for waiting - Your updates have completed!" 

#printf "${LGREEN}System will reboot automatically in FIVE minutes - please save your work!${NC}\n"
#sudo sync && sudo shutdown -r +5

####//////////////////////////  END   ///////////////////////////////////#####

### TERMINAL ZSH BASH OH MY BASH
## */* terminal 




echo "PLANK"
printf "${LGREEN}PLANKK ${NC}\n"
sudo apt install plank
echo "FINISH"

sudo apt install -y golang
sudo apt install -y lolcat

echo " ULTIMATES STEPS"
printf "${LGREEN}KALI LINUX REQUE TERMINAL CUSTOM${NC}\n"

sudo apt-get install curl 
sudo apt-get install git
sudo apt-get install wget 
sudo apt-get install zsh
sudo apt-get install tmux


printf "${LGREEN} CONGRATULATIONS ..... FINISH ${NC}\n"


echo "....."
printf "${LGREEN}Cleaning Up...${NC}\n"
sudo apt autoclean -y
sudo apt autoremove -y
echo "Finish pre last step"

echo "UPDATE"
printf "${LGREEN}KALI LINUX UPDATE && UPGRADE FULL${NC}\n"
apt-get update -y  && apt-get upgrade -y  && apt-get dist-upgrade -y 
echo "UPDATE"

echo "fix"
printf "${LGREEN}FIXXED PACKGES${NC}\n"
sudo apt --fix-broken install -y
sudo dpkg --configure -a
echo "fix"



echo ".........."
printf "${LGREEN} YOUR WELCOME YOURE FINISH${NC}\n"
echo ".........."

printf "${LGREEN} KALI LINUX ${NC}\n"
echo ".........."

printf "${LGREEN} SCRIP BY YAIRC249 ${NC}\n"

