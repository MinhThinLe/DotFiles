source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

cliphist list |\
    rofi -dmenu -display-columns 2 -theme ${theme} |\
    cliphist decode |\
    wl-copy
