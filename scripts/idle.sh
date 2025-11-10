swayidle \
    lock "pidof hyprlock || hyprlock -q" \
    unlock 'pkill hyprlock' \
    timeout 300 "loginctl lock-session" \
    timeout 480 'niri msg action power-off-monitors' \
    timeout 600 'systemctl suspend' \
    before-sleep "loginctl lock-session"
