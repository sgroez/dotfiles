import Quickshell
import Quickshell.Bluetooth
import QtQuick
import qs.components

Icon {
  id: root
  text: {
    if (Bluetooth.defaultAdapter.enabled) {
      if (Bluetooth.defaultAdapter.devices.length > 0) return "bluetooth_connected";
      return "bluetooth"
    }
    return "bluetooth_disabled"
  }
}
