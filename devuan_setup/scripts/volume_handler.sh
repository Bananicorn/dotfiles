#!/bin/bash

if [ "$1" = "+" ]; then
	pulsemixer --change-volume +5
elif [ "$1" = "-" ]; then
	pulsemixer --change-volume -5
else
	pulsemixer --toggle-mute
fi

VOLUME=$(pulsemixer --get-volume | grep -oP "^\d+")
COLORS="222222FF 33DD33FF FF0000FF"
if [ $(pulsemixer --get-mute) = "0" ]; then
	COLORS="222222FF 33DD33FF 33DD33FF"
fi

echo "$VOLUME $COLORS" > $2
