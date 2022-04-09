#!/bin/bash

# Bar-A
bar-a(){
    cp ~/.config/bspwm/polybar/scripts/Files/bspbar-a ~/.config/bspwm/bin/bspbar
	bspc wm -r ;
	bspc config top_padding 28 ;
}

# Bar-B
bar-b(){
    cp ~/.config/bspwm/polybar/scripts/Files/bspbar-b ~/.config/bspwm/bin/bspbar
	bspc wm -r ;
}

if [[ "$1" == "--normal" ]]; then
	bar-a;
elif [[ "$1" == "--float" ]]; then
	bar-b;
fi
