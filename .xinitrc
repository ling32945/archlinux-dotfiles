# Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# map CapsLock to Ctrl
setxkbmap -option caps:ctrl_modifier

#xset +fp /usr/share/fonts/local/

# start i3-gaps
exec i3 -c ~/.config/i3/config

xset r rate 200 50

