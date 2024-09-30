eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa_github

export EDITOR=vi
export XKB_DEFAULT_LAYOUT=de
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland
export XDG_DATA_HOME=~/.local/share
export XDG_CURRENT_DESKTOP="${XDG_CURRENT_DESKTOP:-sway}"
export WOBSOCK_VOLUME="${XDG_RUNTIME_DIR}/wob_volume.sock"
export WOBSOCK_BRIGHTNESS="${XDG_RUNTIME_DIR}/wob_brightness.sock"
export WOBSOCK_BATTERY="${XDG_RUNTIME_DIR}/wob_battery.sock"

#-- ensure XDG_Runtime_dir is set
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
		export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
	fi
fi

udiskie &
/usr/lib/x86_64-linux-gnu/libexec/kdeconnectd &
dbus-run-session sway
