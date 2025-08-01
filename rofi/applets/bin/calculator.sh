dir="$HOME/.config/rofi/launchers/type-1"
theme='style-5'

rofi -show calc \
    -modi calc \
    -no-show-match \
    -no-sort \
    -no-bold \
    -theme ${dir}/${theme} \
    -kb-accept-entry 'Control+Return' \
    -kb-accept-custom 'Return' \
    -calc-command "printf '{result}' | wl-copy -t 'text/plain;charset=utf-8'"
