#!/usr/bin/bash

function nwp() {
  #export RANDOMWALLPAPER=$(find $HOME/Assets/wallpapers/ -type f | shuf -n 7 | shuf -n 1);
  #wal -i ${RANDOMWALLPAPER};
  wpg -m
  wal_steam -w;
  pywalfox update;
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
export PATH="${PATH}:${HOME}/go/bin/";
export PATH="${PATH}:${HOME}/.config/composer/vendor/bin/";

# Proton
export STEAM_COMPAT_DATA_PATH=$HOME/proton
complete -C /home/karl/go/bin/kustomize kustomize
