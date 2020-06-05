pywalfox daemon &
export AWT_TOOLKIT=MToolkit
wmname compiz

# Reload last known Wal scheme generated.
wal -R

# Locking mechanism
xset s on
xset s 600
xss-lock -- ~/.config/lock/lock --pixelate &

history -c
echo "" > ~/.bash_history
