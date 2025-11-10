function prepend_icon(text, is_charging) {
    const CHARGING_ICON = '󰂄';
    const BATTERY_ICONS = [ '󰁺', '󰁻', '󰁼', '󰁽', '󰁾', '󰁿', '󰂀', '󰂁', '󰂂', '󰁹' ];

    if (is_charging === "1") {
        return CHARGING_ICON;
    }

    const percentage = Number(text);
    const spacing = 100 / BATTERY_ICONS.length

    for (let icon = 0; icon < BATTERY_ICONS.length; icon++) {
        if (percentage < spacing * icon) {
            return BATTERY_ICONS[icon - 1] + " " + text.trim()
        }
    }
}
