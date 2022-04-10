# Dotfiles
My personal dotfiles for bspwm, ranger, neovim, ncmpcpp, firefox, rofi and more!

## Screenshots
### Bars
Float
![Float](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/bar-float.png)

Normal
![Float](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/bar-normal.png)

### Desktop
|  |  |
|-|-|
|Flamingo|Mauve|
| ![Flamingo](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Flamingo.png) | ![Mauve](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Mauve.png) |
|Pink|Maroon|
| ![Pink](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Pink.png) | ![Maroon](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Maroon.png) |
|Red|Peach|
| ![Red](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Red.png) | ![Peach](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Peach.png) |
|Yellow|Green|
| ![Yellow](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Yellow.png) | ![Green](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Green.png) |
|Teal|Blue|
| ![Teal](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Teal.png) | ![Blue](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Blue.png) |
|Sky|  |
| ![Sky](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Sky.png) |  |

### Others
|  |  |
|-|-|
|Neofetch|Ncmpcpp|
| ![Neofetch](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Neofetch.png) | ![Ncmpcpp](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Ncmpcpp.png) |
|Cava|Wallpaper|
| ![Cava](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Cava.png) | ![Wallpaper](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Wallpaper.png) |
|Color Scheme| |
| ![Color](https://raw.githubusercontent.com/MoisesMP/dotfiles/main/Screenshots/Color.png) |  |

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
   - AUR Helper: [paru](https://github.com/Morganamilo/paru) 
   - Shell: [Zsh](https://www.zsh.org/)   
- Colorscheme: [Catppuccin](https://github.com/catppuccin/catppuccin) 
- Compositor: [Picom (ibhagwan)](https://github.com/ibhagwan/picom) 
- Bar: [Polybar](https://github.com/polybar/polybar) 
- Launcher: [rofi](https://github.com/davatorium/rofi)
- Notifications: [dunst](https://dunst-project.org/)
- Web Browser: Firefox
  - userChrome: [Simplify Darkish](https://github.com/CristianDragos/FirefoxThemes)  
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
   - [Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts)
 
 
 ```sh
   paru -S bspwm sxhkd rofi picom-ibhagwan-git polybar pcmanfm xfce-polkit       \
          kitty ranger btop dunst ksuperkey xfce4-power-manager firefox          \
          acpi mpd mpc ncmpcpp xorg-xsetroot nitrogen networkmanager-dmenu-git   \
          wmctrl checkupdates-systemd-git neovim vim imagemagick libnotify xclip \
            zscroll playerctl betterlockscreen neofetch lxappearance zsh cava    \
          exa ueberzug w3m xfce4-settings ttf-iosevka-nerd curl 
```
Can replace paru with yay

### Mpd notification

- [mpd notification](https://github.com/eworm-de/mpd-notification)

## User's configuration
**Network Module**
If you have an error with the wifi module, change the network interface to
` ~/.config/bspwm/polybar/bin/modules`

```cfg
  ...
   [module/network]
   type = internal/network
   interface = wlp2s0
  ...
 ```

   - - To know the name of the network interface, type in the terminal
      ```sh
         ip add
      ```
   - - note the name of the wifi network interface begins with wl

**MPD Music Directory**
- Edit ` ~/.mpd/mpd.conf`
```cfg
  ...
  
   music_directory     "~/Music"
  
  ...
 ```
Change it to your preferred directory

**Ncmpcpp Music Directory**
- Edit ` ~/.ncmpcpp/config` and ` ~/.ncmpcpp/config-art`
```cfg
  ...
  
   music_directory     "~/Music"
  
  ...
 ```
 Change it to your preferred directory
 
 ` ~/.ncmpcpp/scripts/album-art`
 
```cfg
  ...
  
   music_library="$HOME/Music"
  
  ...
 ```
 Change it with the same directory of the previous steps
