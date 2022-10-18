#!/bin/bash
if zenity --question --text 'Shutdown?' --ok-label 'Shutdown' --cancel-label 'Cancel'; then
	exec sudo poweroff
fi


