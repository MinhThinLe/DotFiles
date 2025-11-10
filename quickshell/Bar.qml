import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

Scope {
    id: root
    property string time

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            implicitHeight: WindowConfig.bar_height
            color: ColorScheme.background

            anchors {
                top: true
                left: true
                right: true
            }

            RowLayout {
                id: left_box
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter

            }

            RowLayout {
                id: center_box
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                Clock {}
            }

            RowLayout {
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter

                Temperature {}
                Battery {}
            }
        }
    }
}
