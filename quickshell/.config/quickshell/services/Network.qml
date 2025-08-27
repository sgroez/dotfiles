pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
  id: root

  property bool connected: false
  property bool onWifi: true
  property string networkName: ""

  Timer {
    interval: 60000 //update every minute
    running: true
    repeat: true
    onTriggered: networkProc.running = true
  }

  Process {
    id: networkProc
    command: ["nmcli", "-t", "-f", "TYPE,STATE,CONNECTION", "device"]
    running: true
    stdout: StdioCollector {
      onStreamFinished: {
        const lines = text.split("\n");
        for (const line of lines) {
          const [type, state, connection] = line.trim().split(":");
          if (type !== "wifi" && type !== "ethernet") continue;

          if (state === "connected") {
            root.connected = true;
            root.onWifi = type === "wifi";
            root.networkName = connection;
            break;
          }
        }
      }
    }
  }
}
