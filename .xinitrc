#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

setxkbmap -option terminate:ctrl_alt_bksp &
xrdb -merge ~/.Xresources &
wmname LG3d &
xbindkeys &
xset +fp /usr/share/fonts/local &
xset fp rehash &

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

## Compiz
#exec ck-launch-session /home/n1x4/bin/compiz.sh ccp

## OpenBox Desktop
#exec ck-launch-session dbus-launch openbox-session

## DWM Desktop
#exec ~/bin/dwm

#Gnome
#exec ck-launch-session gnome-session

# XFCE4
exec startxfce4
