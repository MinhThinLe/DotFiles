import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: root
    property string time

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: 42

            Clock {
                anchors.centerIn: parent
            }
        }
    }
}
