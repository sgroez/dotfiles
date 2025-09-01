pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
  id: root
  property real percentage
  property string state

  Timer {
    id: timer
    interval: 60000 //update every minute
    running: true
    repeat: true
    onTriggered: capacityProc.running = true
  }

  Process {
    id: capacityProc
    command: ["upower", "-d"]
    running: true
    stdout: StdioCollector {
      onStreamFinished: {
        const regex = /Device: \/org\/freedesktop\/UPower\/devices\/DisplayDevice[\s\S]*?state:\s*(\w+)[\s\S]*?percentage:\s*(\d+)%/;
        const match = text.match(regex);

        if (match) {
          root.state = match[1];
          root.percentage = parseInt(match[2]);
        }
      }
    }
  }
}
