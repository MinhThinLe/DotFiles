source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

echo $theme

message="Choisis une configuration d'affichage"
prompt="Configuration d'affichage"

option_1="Écran intégré seulement"
option_2="Écran externe seulement"
option_3="S'étendre"
option_4="Dupliqué"

rofi_cmd() {
	rofi \
        -theme-str "listview { lines: 4; }" \
		-dmenu \
		-p "$prompt" \
		-mesg "$message" \
		-markup-rows \
		-theme ${theme}
}

run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3\n$option_4" | rofi_cmd
}

action_chosen=$(run_rofi)

case ${action_chosen} in
    $option_1)
        kanshictl switch builtin_monitor_only
        ;;
    $option_2)
        kanshictl switch external_monitor_only
        ;;
    $option_3)
        kanshictl switch extend
        ;;
    $option4)
        kanshictl switch duplicate
        ;;
esac
