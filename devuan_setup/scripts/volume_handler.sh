#!/bin/bash

if [ "$1" = "+" ]; then
	pulsemixer --change-volume +5
elif [ "$1" = "-" ]; then
	pulsemixer --change-volume -5
else
	pulsemixer --toggle-mute
fi

COLORS="#FF222222 #FF33DD33 #FF33DD33"
VOLUME=$(pulsemixer --get-volume | grep -oP "^\d+")
if [ $(pulsemixer --get-mute) = "0" ]; then
	COLORS="#FF222222 #FF33DD33 #FFFF0000"
fi

echo "$VOLUME $COLORS" > $2
