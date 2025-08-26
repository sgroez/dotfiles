pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
  id: root
  property real capacity
  property bool isCharging

  Timer {
    interval: 60000 //update every minute
    running: true
    repeat: true
    onTriggered: capacityProc.running = true
  }

  Process {
    id: capacityProc
    command: ["cat", "/sys/class/power_supply/BAT1/capacity"]
    running: true
    stdout: StdioCollector {
      onStreamFinished: root.capacity = parseInt(this.text.trim()) || 0
    }
  }

  Process {
    id: chargingProc
    command: ["cat", "/sys/class/power_supply/BAT1/status"]
    running: true
    stdout: StdioCollector {
      onStreamFinished: root.isCharging = this.text.trim() == "Charging"
    }
  }
}
