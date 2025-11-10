pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    property string time
    property string battery_percentage
    property string is_charging
    property string temperature

    property string date_format: "+%R %A, %B %d, %Y"
    property int refresh_interval_ms: 1000
    id: root

    Process {
        id: refresh_date
        command: ["date", root.date_format ]
        running: true
        stdout: StdioCollector {
            onStreamFinished: root.time = this.text
        }
    }

    Process {
        id: refresh_charging_state
        command: [ "cat", "/sys/class/power_supply/ADP0/online" ]
        running: true
        stdout: StdioCollector {
            onStreamFinished: root.is_charging = this.text
        }
    }

    Process {
        id: refresh_battery
        command: [ "cat", "/sys/class/power_supply/BAT0/capacity" ]
        running: true
        stdout: StdioCollector {
            onStreamFinished: root.battery_percentage = this.text
        }
    }

    Process {
        id: refresh_temperature
        command: [ "cat", "/sys/class/thermal/thermal_zone8/temp" ]
        running: true
        stdout: StdioCollector {
            onStreamFinished: root.temperature = " " + this.text / 1000 + "°C"
        }
    }
    
    Timer {
        interval: root.refresh_interval_ms
        running: true
        repeat: true

        onTriggered: [
            refresh_date.running = true,
            refresh_battery.running = true,
            refresh_charging_state.running = true,
            refresh_temperature.running = true
        ]
    }
}
