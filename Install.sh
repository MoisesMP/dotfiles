#!/bin/bash
set -e
##################################################################################################################
# Dotfiles Install
# Author	:	Moises Montaño

##----------------------------------------------------------------------------------------------------------------
#
# Colors

Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Default
DefaultColor='\e[39m'   # Default foreground color

b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
y='\E[33m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
spath="$( cd "$( dirname $0 )" && pwd )"

#
# 
## -----------------------------------------------------------------------------------------
#
# 
print_centered(){
     [[ $# == 0 ]] && return 1

     declare -i TERM_COLS="$(tput cols)"
     declare -i str_len="${#1}"
     [[ $str_len -ge $TERM_COLS ]] && {
          echo "$1";
          return 0;
     }

     declare -i filler_len="$(( (TERM_COLS - str_len) / 2 ))"
     [[ $# -ge 2 ]] && ch="${2:0:1}" || ch=" "
     filler=""
     for (( i = 0; i < filler_len; i++ )); do
          filler="${filler}${ch}"
     done

     printf "%s%s%s" "$filler" "$1" "$filler"
     [[ $(( (TERM_COLS - str_len) % 2 )) -ne 0 ]] && printf "%s" "${ch}"
     printf "\n"

     return 0
}

center() {
  termwidth="$(tput cols)"
  padding="$(printf '%0.1s' ={1..500})"
  printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"
}

#
# 
## -----------------------------------------------------------------------------------------
#
# 

showlogo(){
	clear
	echo -e "$Red"
	print_centered "=" "="
	sleep 0.1
	echo -e "$Cyan"
	print_centered ""
	sleep 0.1	
	print_centered	"██████╗░░█████╗░████████╗███████╗██╗██╗░░░░░███████╗░██████╗" 
	sleep 0.1	
	print_centered	"██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██║██║░░░░░██╔════╝██╔════╝"
	sleep 0.1	
	print_centered 	"██║░░██║██║░░██║░░░██║░░░█████╗░░██║██║░░░░░█████╗░░╚█████╗░"
	sleep 0.1	
	print_centered	"██║░░██║██║░░██║░░░██║░░░██╔══╝░░██║██║░░░░░██╔══╝░░░╚═══██╗"
	sleep 0.1	
	print_centered	"██████╔╝╚█████╔╝░░░██║░░░██║░░░░░██║███████╗███████╗██████╔╝"
	sleep 0.1	
	print_centered	"╚═════╝░░╚════╝░░░░╚═╝░░░╚═╝░░░░░╚═╝╚══════╝╚══════╝╚═════╝░"
	sleep 0.1	
	print_centered ""
	sleep 0.1	
	print_centered	"██████╗░░██████╗██████╗░░██╗░░░░░░░██╗███╗░░░███╗"
	sleep 0.1	
	print_centered	"██╔══██╗██╔════╝██╔══██╗░██║░░██╗░░██║████╗░████║"
	sleep 0.1	
	print_centered	"██████╦╝╚█████╗░██████╔╝░╚██╗████╗██╔╝██╔████╔██║"
	sleep 0.1	
	print_centered	"██╔══██╗░╚═══██╗██╔═══╝░░░████╔═████║░██║╚██╔╝██║"
	sleep 0.1	
	print_centered	"██████╦╝██████╔╝██║░░░░░░░╚██╔╝░╚██╔╝░██║░╚═╝░██║"
	sleep 0.1	
	print_centered	"╚═════╝░╚═════╝░╚═╝░░░░░░░░╚═╝░░░╚═╝░░╚═╝░░░░░╚═╝"
	sleep 0.1
	print_centered ""
	sleep 0.1	
	echo -e "$Red"
	print_centered "=" "=" 
	sleep 0.1
	center	"Created By Moises Montaño @MoisesMP: github.com/MoisesMP"
	sleep 0.1
	print_centered "=" "=" 
	echo -e "$DefaultColor"
}

checkyay(){
	if pacman -Qi yay &> /dev/null ; then
    	echo [✔]::[Yay]: installation found!;
		sleep 0.5
		packages
	else
		echo [x]::[warning]:this script require Yay ;
		echo ""
		echo [!]::[please wait]: Installing Yay ..  ;
		git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si 
		echo ""
		sleep 0.5
		packages
	fi
}

packages(){
	echo
	echo -en " ${y}Press Enter To Continue${endc}"
	read input
	yay -Sy bspwm sxhkd rofi picom-ibhagwan-git polybar pcmanfm xfce-polkit     \
         kitty ranger btop dunst ksuperkey xfce4-power-manager firefox          \
         acpi mpd mpc ncmpcpp xorg-xsetroot nitrogen networkmanager-dmenu-git   \
         wmctrl checkupdates-systemd-git neovim vim imagemagick libnotify xclip \
         alacritty zscroll playerctl betterlockscreen neofetch lxappearance     \
         exa ueberzug w3m xfce4-settings ttf-iosevka-nerd curl zsh cava glava --noconfirm
	echo
	echo -e $Green " Packages Was Successfully Installed"
	sleep 0.5
	echo -en " ${y}Press Enter To Return To Menu${endc}"
	echo
	read input
}

dir=;

checkdirold(){
	if [[ -d $HOME/.config/old ]]; then  
		sleep 0.1 
	else
		mkdir $HOME/.config/old/
	fi
}

checkdirconfig(){
	if [[ -d $HOME/.config/ ]]; then 
		checkdirold 
	else
		mkdir $HOME/.config/
	fi

}

checkdirc(){
	if [[ -d $HOME/.config/$dir ]]; then 
	 	mv $HOME/.config/$dir $HOME/.config/old/
	fi
}

checkdirsxhkd(){
	if [[ -d $HOME/.config/$dir ]]; then 
	 	cp -r $HOME/.config/$dir $HOME/.config/old/
	fi
}

checkdirhome(){
	if [[ -d $HOME/$dir ]]; then 
	 	mv $HOME/$dir $HOME/.config/old/
	fi
}

file=;

checkfileshome(){
	if [[ -f $HOME/$file ]]; then
		mv $HOME/$file $HOME/.config/old/
	fi
}

copyfiles(){
	cp -r ./.config $HOME/
	cp -r ./.local $HOME/
	cp -r ./.fonts $HOME/
	cp -r ./.mpd $HOME/
	cp -r ./.ncmpcpp $HOME/
	cp -r ./.oh-my-zsh $HOME/
	cp -r ./.wallpaper $HOME/
	cp ./.nanorc $HOME/
	cp ./.Xresources $HOME/
	cp ./.zshrc $HOME/
}

backupfiles(){
	checkdirconfig
	dir=alacritty && checkdirc;
	dir=bspwm && checkdirc;
	dir=btop && checkdirc;
	dir=cava && checkdirc;
	dir=geany && checkdirc;
	dir=gtk-2.0 && checkdirc;
	dir=gtk-3.0 && checkdirc;
	dir=kitty && checkdirc;
	dir=neofetch && checkdirc;
	dir=networkmanager-dmenu && checkdirc;
	dir=nvim && checkdirc;
	dir=pcmanfm && checkdirc;
	dir=pulse && checkdirc;
	dir=ranger && checkdirc;
	dir=glava && checkdirc;
	dir=sxhkd && checkdirc;
	dir=.mpd && checkdirhome;
	dir=.ncmpcpp && checkdirhome;
	dir=.ncmpcpp && checkdirhome;
	dir=.wallpaper && checkdirhome;
	file=.nanorc && checkfileshome;
	file=.Xresources && checkfileshome;
	file=.zshrc && checkfileshome;
}

dotfiles(){
	echo
	echo -en " ${y}Press Enter To Continue${endc}"
	read input
	backupfiles
	echo
	echo -e "	If you have previous configurations were saved in ${Green} $HOME/.config/old ${DefaultColor}"
	sleep 0.5
	copyfiles
	echo -en " ${y}Press Enter To Return To Menu${endc}"
	echo
	read input
}

symboliclinks(){
  sudo ln -s ~/.config/bspwm/bspwm_window_titles.sh /usr/local/bin/bspwm_window_title
  sudo ln -s ~/.config/bspwm/bin/music /usr/local/bin/music
}

menu(){
while :
do
showlogo
echo ""
echo -e "${Blue}       User : ${DefaultColor}" $USER
echo ""
echo -e "      ${BCyan}[  Installer MENU ]${enda}"
echo -e "
	[1]   Install packages (Arch only)
	[2]   Install dotfiles             

		${Red}[q]    Quit Script${DefaultColor}"   
        
        
        
echo
echo -en "        ${Blue}Select Option: ${DefaultColor}"
read option
case $option in
1) checkyay;;
2) dotfiles;;
q) exit;;
Q) exit;;
*) echo " \"$option\" Is Not A Valid Option"; sleep 1 ;;
esac
done
}

menu
#checkdir
