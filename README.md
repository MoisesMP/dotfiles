# Dotfiles
My personal dotfiles for bspwm, ranger, ncmpcpp, firefox, rofi and more!

## Installation
* [Preview](#screenshots)
* [Packages](#packages)
* [Dotfiles](#dotfiles-install)
* [Notes](#notes)


## Screenshots 
![Desktop Screenshots](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/desktop.png)
![Desktop Screenshots](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/neofetch.png)
![Desktop Screenshots](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/ncmpcpp.png)
![Desktop Screenshots](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/cava.png)

## Packages
- Window Manager: [BSPWM](https://github.com/baskerville/bspwm) 
- GTK Theme: [Catppuccin for GTK](https://github.com/catppuccin/gtk)
- Icon Theme: [Catppuccin for Papirus](https://github.com/catppuccin/papirus-folders)
- UI Font: [JetBrains](https://www.jetbrains.com/es-es/lp/mono/) 
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/) 
   - Terminal Font: [JetBrains](https://www.jetbrains.com/es-es/lp/mono/) 
   - File Manager: [Ranger](https://github.com/ranger/ranger) 
   - Music Player: [ncmpcpp](https://rybczak.net/ncmpcpp/) 
   - Task Manager: [btop](https://github.com/aristocratos/btop) 
   - Fetch: [neofetch](https://github.com/dylanaraps/neofetch) 
   - AUR Helper: [yay](https://github.com/Jguer/yay) 
   - Shell: [Zsh](https://www.zsh.org/)   
- Colorscheme: [Catppuccin](https://github.com/catppuccin/catppuccin) 
- Compositor: [Picom (ibhagwan)](https://github.com/ibhagwan/picom) 
- Bar: [Polybar](https://github.com/polybar/polybar) 
- Launcher: [rofi](https://github.com/davatorium/rofi)
- Notifications: [dunst](https://dunst-project.org/)
- Web Browser: Google Chrome / Firefox
  - userChrome: [Blurredfox](https://github.com/manilarome/blurredfox)  
- File Manager: [Pcmanfm](https://wiki.lxde.org/en/PCManFM) 
- Settings Manager: [LXAppearance](https://wiki.lxde.org/en/LXAppearance)/kvantum
- Lockscreen: [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen) 
#### Others
- [Xfce4 Power Manager](https://docs.xfce.org/xfce/xfce4-power-manager/start)
- [Ksuperkey](https://github.com/hanschen/ksuperkey)
- [Xsettingsd](https://github.com/derat/xsettingsd)
- [Xsetroot](https://www.x.org/archive/X11R7.5/doc/man/man1/xsetroot.1.html)
- Terminal
   - [exa](https://github.com/ogham/exa)
   - [doas](https://github.com/slicer69/doas)
- Fonts Polybar
   - [JetBrains](https://www.jetbrains.com/es-es/lp/mono/)
   - [Icomoon-feather](https://icomoon.io/icons-icomoon.html)
   - [Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts)
   - [Linearicons](https://linearicons.com/)

## Dotfiles install
1. Clone this repository somewhere on your machine.
```sh
   git clone https://github.com/MoisesMP/dotfiles.git
```
2. Go to dotfiles dir
```sh
   cd dotfiles
```
3. Copy all files to their respective directories 
```sh
   cp -r .config/ ~/
```
```sh
   cp .ncmpcpp/ ~/
```
```sh
   cp .mpd/ ~/
```
```sh
   cp .oh-my-zsh/ ~/
```
```sh
   cp .wallpaper/ ~/
```
```sh
   sudo cp music /usr/local/bin/
```
```sh
   cp .Xresources ~/
```
```sh
   cp .zshrc ~/
```
```sh
   cp .nanorc ~/
```


## Notes
To change the wallpaper you only need to change the background of betterlockscreen
```sh
   betterlockscreen -u /path/to/image
```
