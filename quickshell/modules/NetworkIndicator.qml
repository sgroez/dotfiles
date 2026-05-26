import Quickshell
import QtQuick
import qs.components
import qs.services

Icon {
  id: root
  text: {
    if (Network.connected) {
      if (Network.onWifi) return "wifi";
      return "lan"
    }
    return "wifi_off"
  }
}
