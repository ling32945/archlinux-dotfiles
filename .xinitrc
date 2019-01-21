# Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# map CapsLock to Ctrl
setxkbmap -option caps:ctrl_modifier

#xset +fp /usr/share/fonts/local/

# start i3-gaps
exec i3 -c ~/.config/i3/config

## i3 start with debuging
# command "DISPLAY=:0 i3-dump-log" to view log
#exec i3 -c ~/.config/i3/config --shmlog-size=26214400

xset r rate 200 50

