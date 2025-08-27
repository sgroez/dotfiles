import Quickshell
import QtQuick
import qs.components
import qs.services

Icon {
  id: root
  text: {
    if (Network.connected) {
      if (Network.onWifi) return "\ue63e";
      return "\ueb2f"
    }
    return "\ue648"
  }
}
