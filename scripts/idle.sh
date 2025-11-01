swayidle \
    lock 'pidof hyprlock || hyprlock' \
    unlock 'pkill hyprlock' \
    timeout 300 'pidof hyprlock || hyprlock' \
    timeout 480 'niri msg action power-off-monitors' \
    timeout 600 'systemctl suspend' \
    before-sleep 'pidof hyprlock || hyprlock &'
