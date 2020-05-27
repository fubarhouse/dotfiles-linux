#!/usr/bin/bash

function nwp() {
  RANDOMWALLPAPER=$(find $HOME/Assets/wallpapers/ -type f | shuf -n 1);
  wal -i ${RANDOMWALLPAPER};
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
