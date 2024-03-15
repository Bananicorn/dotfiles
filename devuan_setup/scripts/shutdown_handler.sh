#!/bin/bash
#swaymsg -t get_workspaces | jq ".[] | select(.focused == true)"
if zenity --question --text 'Shutdown?' --ok-label 'Shutdown' --cancel-label 'Cancel'; then
	exec /sbin/shutdown now
fi


