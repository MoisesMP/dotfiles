#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
#polybar-msg cmd quit
# Otherwise you can use the nuclear option:
#killall -q polybar

#while pgrep -x polybar >/dev/null; do sleep 0.1; done


# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log /tmp/polybar4.log /tmp/polybar5.log /tmp/polybar6.log /tmp/polybar7.log
polybar --reload -c ~/.config/bspwm/polybar/config top-title 2>&1 | tee -a /tmp/polybar2.log & disown
polybar --reload -c ~/.config/bspwm/polybar/config top-music 2>&1 | tee -a /tmp/polybar3.log & disown
polybar --reload -c ~/.config/bspwm/polybar/config top-tray 2>&1 | tee -a /tmp/polybar4.log & disown
#polybar -c ~/.config/bspwm/polybar/bar main 2>&1 | tee -a /tmp/polybar5.log & disown
if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
  polybar --reload -c ~/.config/bspwm/polybar/config top-ws1-external 2>&1 | tee -a /tmp/polybar6.log & disown
  polybar --reload -c ~/.config/bspwm/polybar/config top-ws2-external 2>&1 | tee -a /tmp/polybar7.log & disown
  polybar --reload -c ~/.config/bspwm/polybar/config top-title-external 2>&1 | tee -a /tmp/polybar2.log & disown
  polybar --reload -c ~/.config/bspwm/polybar/config top-music-external 2>&1 | tee -a /tmp/polybar3.log & disown
  polybar --reload -c ~/.config/bspwm/polybar/config top-tray-external 2>&1 | tee -a /tmp/polybar4.log & disown
else 
  polybar --reload -c ~/.config/bspwm/polybar/config top-ws 2>&1 | tee -a /tmp/polybar1.log & disown
fi

echo "Bars launched..."



