#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=~/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# keyboard
exec setxkbmap -option caps:escape -layout de &
exec xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Synaptics Tap Action' 1 1 1 1 1 1 1 &
exec xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Synaptics Two-Finger Scrolling' 1 1 &
exec xinput set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Speed' -.3 &

#and finally start the WM
exec i3
