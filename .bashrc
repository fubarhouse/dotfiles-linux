#!/usr/bin/bash

function nwp() {
  #export RANDOMWALLPAPER=$(find $HOME/Assets/wallpapers/ -type f | shuf -n 7 | shuf -n 1);
  #wal -i ${RANDOMWALLPAPER};
  wpg -m
  wal_steam -w;
}

# async apply to terminal emulator
(cat ~/.cache/wal/sequences &);
# synchronous alternative
cat ~/.cache/wal/sequences;

# apply color scheme to TTY
source ~/.cache/wal/colors-tty.sh;

# $PATH
export PATH="${PATH}:${HOME}/.local/bin/";
export PATH="${PATH}:${HOME}/.local/share/applications/";
