#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Title
CPID=$(pgrep -x polybar)

if [ -n "${CPID}" ] ; then
  kill -TERM ${CPID}
fi

# add window titles
# using bspc query here to get monitors in the same order bspwm sees them
for m in $( bspc query -M --names ); do
    index=$((index + 1))
    export P_BSPWM_WINDOW_CMD="tail ~/.cache/bspwm_windows_${index}.txt"

    MONITOR=$m polybar --reload right &
    MONITOR=$m polybar --reload left &
    MONITOR=$m polybar --reload center &
done

# Launch bar1 and bar2
polybar top-ws -c ~/.config/bspwm/polybar/config &
polybar top-title -c ~/.config/bspwm/polybar/config &
polybar top-music -c ~/.config/bspwm/polybar/config &
polybar top-tray -c ~/.config/bspwm/polybar/config &
#polybar control -c ~/.config/bspwm/polybar/control &
