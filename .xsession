#!/bin/sh
xset b off
xset +fp /usr/share/fonts/local
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ $HOSTNAME == sable ]] && synergys
[[ $HOSTNAME == sharpie ]] && synergyc 192.168.20.15
exec i3
