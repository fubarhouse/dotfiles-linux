#!/usr/bin/bash

# async apply to terminal emulator
(cat ~/.cache/wal/sequences &)
# synchronous alternative
cat ~/.cache/wal/sequences

# apply color scheme to TTY
source ~/.cache/wal/colors-tty.sh