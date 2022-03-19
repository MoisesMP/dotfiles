#!/bin/env bash
set -e

echo "Welcome!" && sleep 1

echo "###########################################################################"
echo "Will do stuff, get ready"
echo "###########################################################################"
echo && echo -en "Press Enter To Continue"
read input


filecopying(){
    # install fonts
    #if [ -d ~/local/share/fonts ]

    #    mkdir -p ~/.local/share/fonts
    #    mkdir -p ~/.srcs
    #    cp -r ./fonts/* ~/local/share/fonts/ 
    #else
    #    cp -r ./fonts/* ~/.local/share/fonts/
    #    fc-cache -f
    #    clear 
    
    #
    # BSPWM
    #
    if [ -d ~/.config/bspwm ]; then
        echo "bspwm configs detected, backing up..."
        mkdir ~/.config/bspwm.old/ && mv ~/.config/bspwm/* ~/.config/bspwm.old/
        echo "Installing bspwm configs..."
        cp -r ./config/bspwm/* ~/.config/bspwm/
    else
        echo "Installing bspwm configs..."
        mkdir ~/.config/bspwm/ && cp -r ./config/bspwm/* ~/.config/bspwm/;
    fi
    #
    # SXHKD
    #
    if [ -d ~/.config/sxhkd ]; then
        echo "Shhkd configs detected, backing up..."
        mkdir ~/.config/sxhkd.old/ && mv ~/config/sxhkd/* ~/.config/sxhkd.old/
        echo "Installing sxhkd configs..."
        cp ./config/sxhkd/* ~/.config/sxhkd/
    else
        echo "Installing sxhkd configs..."
        mkdir ~/.config/sxhkd/ && cp ./config/sxhkd/* ~/.config/sxhkd/
    fi
    #
    # Kitty
    #
    if [ -d ~/.config/kitty ]; then
        echo "Kitty configs detected, backing up..."
        mkdir ~/.config/kitty.old/ && mv ~/.config/kitty/* ~/.config/kitty.old/
        echo "Installing kitty configs..."
        cp -r ./config/kitty/* ~/.config/kitty/
    else
        echo "Installing kitty configs..."
        mkdir ~/.config/kitty/ cp -r ./config/kitty/* ~/.config/kitty/
    fi
    #
    # Alacritty
    #
    if [ -d ~/.config/alacritty ]; then
        echo "Alacritty configs detected, backing up..."
        mkdir ~/.config/alacritty.old/ && mv ~/.config/alacritty/* ~/.config/alacritty.old/
        echo "Installing alacritty configs..."
        cp -r ./config/alacritty/* ~/.config/alacritty/
    elif [ -f ~/.config/alacritty.yml ]; then
        echo "Alacritty configs detected, backing up..."
        mv ~/.config/alacritty.yml ~/.config/alacritty.yml.old;
        echo "Installing alacritty configs..."
        mkdir ~/.config/alacritty/ cp -r ./config/alacritty/* ~/.config/alacritty/
    else
        echo "Installing alacritty configs..."
        mkdir  ~/.config/alacritty/  && cp ./config/alacritty/* ~/.config/alacritty/
    fi
    #
    #  Btop
    #
    if [ -d ~/.config/btop ]; then
        echo "Btop configs detected, backing up..."
        mkdir ~/.config/btop.old && mv ~/.config/btop/* ~/.config/btop.old/
        echo "Installing btop configs..."
        cp -r ./config/btop/* ~/.config/btop/
    else
        echo "Installing btop configs..."
        mkdir ~/.config/btop/ && cp -r ./config/btop/* ~/.config/btop/
    fi
    #
    # Cava 
    #
    if [ -d ~/.config/cava ]; then
        echo "Cava configs detected, backing up..."
        mkdir ~/.config/cava.old/ && mv ~/.config/cava/* ~/.config/cava.old/
        echo "Installing cava configs..."
        cp -r ./config/cava/* ~/.config/cava/
    else
        echo "Installing cava configs..."
        mkdir ~/.config/cava/ && cp -r ./config/cava/* ~/.config/cava/
    fi
    #
    # Neofetch
    #
    if [ -d ~/.config/neofetch ]; then
        echo "Neofetch configs detected, backing up..."
        mkdir ~/.config/neofetch.old && mv ~/.config/neofetch/* ~/.config/neofetch.old/
        echo "Installing neofetch configs..."
        cp -r ./config/neofetch/* ~/.config/neofetch/
    else
        echo "Installing neofetch configs..."
        mkdir ~/.config/neofetch/ && cp -r ./config/neofetch/* ~/.config/neofetch/
    fi
    #
    # Rofi
    #
    if [ -d ~/.config/rofi ]; then
        echo "Rofi configs detected, backing up..."
        mkdir ~/.config/rofi.old/ && mv ~/.config/rofi/* ~/.config/rofi.old/
        echo "Installing rofi configs..."
        cp -r ./config/rofi/* ~/.config/rofi/
    else
        echo "Installing rofi config..."
        mkdir ~/.config/rofi/ && cp -r ./config/rofi/* ~/.config/rofi/
    fi
    #
    # Networkmanager-dmenu
    #
    if [ -d ~/.config/networkmanager-dmenu  ]; then
        echo "Networkmanager-dmenu configs detected, backing up..."
        mkdir ~/.configs/networkmanager-dmenu.old/ && mv ~/.config/networkmanager-dmenu/* ~/.config/networkmanager-dmenu.old/
        echo "Installing networkmanager-dmenu configs..."
        cp -r ./config/networkmanager-dmenu/* ~/.config/networkmanager-dmenu/
    else
        echo "Installing networkmanager-dmenu config..."
        mkdir ~/.config/networkmanager-dmenu/ && cp -r ./config/networkmanager-dmenu/* ~/.config/networkmanager-dmenu/
    fi
    #
    # Neovim
    #
    if [ -d ~/.config/nvim ]; then
        echo "Neovim configs detected,backing up..."
        mkdir ~/.config/nvim.old/ && mv ~/.config/nvim/* ~/.config/nvim.old/
        echo "Installing neovim configs..."
        cp -r ./config/nvim/* ~/.config/nvim/
    else
        echo "Installing neovim configs..."
        mkdir ~/.configs/nvim/ && cp -r ./config/nvim/* ~/.config/nvim/
    fi
    #
    # Ranger
    #
    if [ -d ~/.config/ranger ]; then
        echo "Ranger configs detected, backing up..."
        mkdir ~/.config/ranger.old/ && mv ~/.config/ranger/* ~/.config/ranger.old/
        echo "Installing ranger configs..."
        cp -r ./config/ranger/* ~/.config/ranger/
    else
        echo "Installing ranger configs..."
        mkdir ~/.config/ranger/ && cp -r ./config/ranger/* ~/.config/ranger/
    fi
    #
    # MPD
    #
    if [ -d ~/.mpd ]; then
        echo "MPD configs detected, backing up..."
        mkdir ~/.mpd.old/ && mv ~/.mpd/* ~/.mpd.old/
        echo "Installing mpd configs..."
        cp -r ./mpd/* ~/.mpd/
    else
        echo "Installing mpd configs..."
        mkdir ~/.mpd/ && cp -r ./mpd/* ~/.mpd/
    fi
    #
    # Ncmpcpp
    #
    if [ -d ~/.ncmpcpp ]; then
        echo "Ncmpcpp configs detected, backing up..."
        mkdir ~/.ncmpcpp.old && mv ~/.ncmpcpp ~/.ncmpcpp.old
        echo "Installing ncmpcpp configs..."
        cp -r ./ncmpcpp/* ~/.ncmpcpp/
    else
        echo "Installing ncmpcpp configs..."
        mkdir ~/.ncmpcpp/ &&  cp -r ./ncmpcpp ~/.ncmpcpp/
    fi
    #
    # Xresources
    #
    if [ -f ~/.Xresources ]; then
        echo "Xresources detected, backing up..."
        mv ~/.Xresources ~/.Xresources.old
        echo "Installing Xresources..."
        cp ./Xresources ~/.Xresources
    else
        echo "Installing Xresources..."
        cp ./Xresources ~/.Xresources
    fi
    #
    # Zsh
    #
    if [ -f ~/.zshrc ]; then
        echo "zshrc detected, backing up..."
        mv ~/.zshrc ~/.zshrc.old
        echo "Installing zsh configs..."
        cp -r ./oh-my-zsh/ ~/.oh-my-zsh/
        cp ./zshrc ~/.zshrc
    else
        echo "Installing zshrc configs..."
        cp -r ./oh-my-zsh/ ~/.oh-my-zsh/
        cp ./zshrc ~/.zshrc
    fi
    #
    # Nanorc
    #
    #
    if [ -f ~/.nanorc ]; then
        echo "Nanorc detected, backing up..."
        mv ~/.nanorc ~/.nanorc.old
        echo "Installing nanorc configs..."
        cp ./nanorc ~/.nanorc
    else
        echo "Installing nanorc configs..."
        cp ./nanorc ~/.nanorc
    fi   
    #
    # Wallpaper
    #
    if [ -d ~/.wallpaper ]; then
        echo "Adding wallpaper to ~/.wallpapers..."
        cp ./wallpaper/* ~/.wallpaper/
    else
        echo "Installing wallpaper..."
        mkdir ~/.wallpaper && cp -r ./wallpapers/* ~/.wallpaper/;
    fi
    #
    # Bin files
    #
    echo "Installing bin scripts"
    cp -r ./local ~/
    ln -s ~/.config/bspwm/bin/music ~/.local/bin/music
    ln -s ~/.config/bspwm/bspwm_window_titles.sh ~/.local/bin/bspwm_window_title
    ln -s ~/.config/bspwm/bin/Wall ~/.local/bin/Wall
    
    echo "Installing the necessary permissions"
    chmod +x ~/.config/bspwm/bin/*
    chmod +x ~/.config/bspwm/polybar/scripts/*
    
    #sxhkd &
    
    echo && echo -en "Press Enter To Continue"
    read input      
}


config(){
    if [ -d ~/.config  ]; then
        mkdir -p ~/.config/
        filecopying
    else
        
        filecopying
    fi
}

sxhkd(){
    if [ pgrep -x sxhkd > /dev/null ]; then
        killall -9 sxhkd
        config
        bspc wm -r
        exit
    else
        config
        exit

    fi
}

sxhkd

done 
#echo "PLEASE MAKE .xinitrc TO LAUNCH, or just use your Display Manager (ie. lightdm or sddm, etc.)" 


