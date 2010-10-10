#!/bin/bash

[ -r /etc/profile ] && source /etc/profile
[ -r ~/.bash_profile ] && source ~/.bash_profile

# Set Caps Lock as Mod4 key
xmodmap ~/.Xmodmap

# Enable Energy Star features
[ "$HOSTNAME" = 'mercurius' ] && xset +dpms

# Set mouse speed
xset m 4/3

# Autorepeat
xset r rate 300 30

exec awesome
