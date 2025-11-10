import QtQuick

Row {
    Repeater {
        model: 10
        Workspace {
            is_focused: true
        }
    }
}
