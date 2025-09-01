pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
  id: root
  property string batteryIdentifier
  property real capacity
  property bool isCharging

  Timer {
    id: timer
    interval: 60000 //update every minute
    running: false
    repeat: true
    onTriggered: capacityProc.running = true
  }

  Process {
    id: identifyMainBatteryProc
    command: ["sh", "../scripts/identifyMainBattery.sh"]
    running: true
    stdout: StdioCollector {
      onStreamFinished: {
        root.batteryIdentifier = this.text.trim();
        timer.running = true;
        capacityProc.running = true;
      }
    }
  }

  Process {
    id: capacityProc
    command: ["cat", `/sys/class/power_supply/${batteryIdentifier}/capacity`]
    running: false
    stdout: StdioCollector {
      onStreamFinished: root.capacity = parseInt(this.text.trim()) || 0
    }
  }
}
