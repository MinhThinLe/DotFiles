source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

cliphist list |\
    rofi -dmenu -display-columns 2 -theme ${theme} -p "Clipboard history" |\
    cliphist decode |\
    wl-copy
