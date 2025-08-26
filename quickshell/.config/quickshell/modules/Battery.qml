import Quickshell
import QtQuick
import qs.services

Text {
  id: root
  text: `BAT: ${Power.capacity}`
  color: Power.isCharging ? "#00FF00": "#000000"
}
