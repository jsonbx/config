#!/usr/bin/env sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c ~/.config/polybar/config primary-desktop &
polybar -c ~/.config/polybar/config secondary-desktop &
polybar -c ~/.config/polybar/config primary-status &
polybar -c ~/.config/polybar/config secondary-status &
