import QtQuick

import "../configs"
import "../scripts/battery.js" as JS
import "../"

Rectangle {
    width: inner_text.width + WindowConfig.padding_left + WindowConfig.padding_right
    height: WindowConfig.bar_height - WindowConfig.margin_top - WindowConfig.margin_bottom

    implicitWidth: width
    implicitHeight: height

    radius: WindowConfig.border_radius 

    border.width: WindowConfig.border_thickness
    border.color: ColorScheme.gray

    color: ColorScheme.background

    Text {
        id: inner_text
        color: ColorScheme.foreground
        text: JS.prepend_icon(DataSource.battery_percentage, DataSource.is_charging) + "%"
        anchors.centerIn: parent
    }
}
