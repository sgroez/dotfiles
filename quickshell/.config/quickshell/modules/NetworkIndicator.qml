import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.components
import qs.services

RowLayout {
  id: root
  Icon {
    text: {
      if (Network.connected) {
        if (Network.onWifi) return "wifi";
        return "lan"
      }
      return "wifi_off"
    }
  }
}
