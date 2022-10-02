eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa_github

export EDITOR=vi
export XKB_DEFAULT_LAYOUT=de
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland

udiskie &
sway
