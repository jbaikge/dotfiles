#!/bin/sh
xset b off
xset +fp /usr/share/fonts/local
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
synergys
exec i3
