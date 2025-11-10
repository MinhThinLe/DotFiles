import QtQuick

import "../configs"
import "../"

Rectangle {
    required property bool is_focused

    width: inner_text.width + WindowConfig.padding_left + WindowConfig.padding_right
    height: WindowConfig.bar_height - WindowConfig.margin_top - WindowConfig.margin_bottom

    implicitWidth: width
    implicitHeight: height

    color: ColorScheme.background
    
    Text {
        id: inner_text
        color: is_focused ? ColorScheme.green : ColorScheme.foreground
        text: ""
        anchors.centerIn: parent
    }
}
