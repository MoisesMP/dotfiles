#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

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

# Launch bar1, bar2 and bar3
  polybar top-ws -c ~/.config/bspwm/polybar/config &  
  polybar top-title -c ~/.config/bspwm/polybar/config &
  polybar top-music -c ~/.config/bspwm/polybar/config &
  polybar top-tray -c ~/.config/bspwm/polybar/config &
  #polybar lower -c ~/.config/bspwm/polybar/config &




