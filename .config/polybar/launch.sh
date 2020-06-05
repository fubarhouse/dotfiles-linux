#!/usr/bin/env bash

killall -q polybar
wal -R
wal_steam -g


if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar bar-top     --reload  &
    MONITOR=$m polybar bar-bottom  --reload  &
  done
else
    polybar bar-top     --reload  &
    polybar bar-bottom  --reload  &
    pasystray                     &
fi
