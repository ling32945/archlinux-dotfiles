#!/bin/sh

# Profile file. Runs on login.

export PATH="$PATH:$HOME/.scripts:$HOME/.local/bin"
export EDITOR="vim"
#export TERMINAL="st"
export TERMINAL="urxvt"
export BROWSER="linkhandler"
export TRUEBROWSER="firefox"
export CORPBROWSER="chromium"
export READER="zathura"
export BIB="$HOME/Documents/LaTeX/uni.bib"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_SESSION_DESKTOP="i3"
export XDG_CURRENT_DESKTOP="i3"

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

[ -f ~/.scripts/shortcuts.sh ] && ~/.scripts/shortcuts.sh

[ -f ~/.bashrc ] && source ~/.bashrc

# Start ssh-agent
pgrep ssh-agent >/dev/null || eval `ssh-agent`

# Switch escape and caps and use wal colors if tty:
#sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null

# check hardware platform
[ "$(hostname)" == "zagreb" ] && HW='vbox-mbp'
[ "$(hostname)" == "istanbul" ] && HW='mbp'
[ "$(hostname)" == "venice" ] && HW='x220'
[ "$(hostname)" == "jarch" ] && HW='t520'
export HW

# change FN mode in Mac to Fn by default
#lsmod | grep applesmc -q && echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
[ "$HW" == "mpb" ] &&  sudo tee /sys/module/hid_apple/parameters/fnmode

# Start graphical server if i3 not already running.
#if [ "$(tty)" = "/dev/tty1" ]; then
#	pgrep -x i3 || exec startx
#fi

