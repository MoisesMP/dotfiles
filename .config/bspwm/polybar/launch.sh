#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar


CPID=$(pgrep -x polybar)

if [ -n "${CPID}" ] ; then
  kill -TERM ${CPID}
fi

for m in $( bspc query -M --names ); do
    index=$((index + 1))
    export P_BSPWM_WINDOW_CMD="tail ~/.cache/bspwm_windows_${index}.txt"

    #MONITOR=$m polybar -c ~/.config/bspwm/polybar/config --reload top-ws &
    #MONITOR=$m polybar -c ~/.config/bspwm/polybar/config --reload top-title &
    #MONITOR=$m polybar -c ~/.config/bspwm/polybar/config --reload music &
    #MONITOR=$m polybar -c ~/.config/bspwm/polybar/config --reload top-tray &
done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log /tmp/polybar4.log
polybar -c ~/.config/bspwm/polybar/config top-ws 2>&1 | tee -a /tmp/polybar1.log & disown
polybar -c ~/.config/bspwm/polybar/config top-title 2>&1 | tee -a /tmp/polybar2.log & disown
polybar -c ~/.config/bspwm/polybar/config top-music 2>&1 | tee -a /tmp/polybar3.log & disown
polybar -c ~/.config/bspwm/polybar/config top-tray 2>&1 | tee -a /tmp/polybar4.log & disown

echo "Bars launched..."



