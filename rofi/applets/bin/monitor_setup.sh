source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

echo $theme

message="Choisis une configuration d'affichage"
prompt="Configuration d'affichage"

option_1="Écran intégré seulement"
option_2="Écran externe seulement"
option_3="Deux écran simultanément"

rofi_cmd() {
	rofi \
        -theme-str "listview { lines: 3; }" \
		-dmenu \
		-p "$prompt" \
		-mesg "$message" \
		-markup-rows \
		-theme ${theme}
}

run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3" | rofi_cmd
}

action_chosen=$(run_rofi)

case ${action_chosen} in
    $option_1)
        wlr-randr --output eDP-1 --on
        wlr-randr --output HDMI-A-1 --off
        ;;
    $option_2)
        wlr-randr --output eDP-1 --off
        wlr-randr --output HDMI-A-1 --on
        ;;
    $option_3)
        wlr-randr --output eDP-1 --on
        wlr-randr --output HDMI-A-1 --on
        wlr-randr --output HDMI-A-1 --right-of eDP-1
        ;;
esac
