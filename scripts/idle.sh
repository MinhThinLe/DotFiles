swayidle \
    timeout 150 'pidof hyprlock || hyprlock' \
    timeout 300 'niri msg power-off-monitors' \
    timeout 450 'systemctl suspend' \
    after-resume 'pidof hyprlock || hyprlock'
