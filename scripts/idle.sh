swayidle \
    lock 'pidof hyprlock || hyprlock' \
    unlock 'pkill hyprlock' \
    timeout 150 'pidof hyprlock || hyprlock' \
    timeout 300 'niri msg power-off-monitors' \
    timeout 450 'systemctl suspend' \
    before-sleep 'pidof hyprlock || hyprlock &'
