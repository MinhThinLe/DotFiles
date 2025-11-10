pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    property string time
    id: root

    Process {
        id: refresh_date
        property string time
        command: ["date", "+%R %A, %B %d, %Y"]
        running: true
        stdout: StdioCollector {
            onStreamFinished: root.time = this.text
        }
    }
    
    Timer {
        interval: 1000
        running: true
        repeat: true

        onTriggered: [refresh_date.running = true]
    }
}
