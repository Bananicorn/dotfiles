# keyboard
exec setxkbmap -option caps:escape -layout de &
exec xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Synaptics Tap Action' 1 1 1 1 1 1 1 &
exec xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Synaptics Two-Finger Scrolling' 1 1 &
exec xinput set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Speed' -.3 &
exec xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Synaptics Coasting Speed' 0 0 &

#and finally start the WM
exec i3
