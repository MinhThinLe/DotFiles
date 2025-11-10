import QtQuick

import "../configs"

Rectangle {
    border.width: WindowConfig.border_thickness
    border.color: ColorScheme.gray

    radius: WindowConfig.border_radius

    color:ColorScheme.background

    Text {
        text: "debug text"
    }

    Row {
        anchors.verticalCenter: parent.verticalCenter
        width: elements.width + WindowConfig.padding_left + WindowConfig.padding_right
        height: WindowConfig.bar_height - WindowConfig.margin_top - WindowConfig.margin_bottom
        Repeater {
            id: elements
            model: 10
            anchors.verticalCenter: parent.verticalCenter
            Workspace {
                is_focused: false
            }
        }
    }
}
