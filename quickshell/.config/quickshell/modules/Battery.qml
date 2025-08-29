import Quickshell
import QtQuick
import qs.services
import qs.components
import qs.utils

Icon {
  id: root
  text: Icons.getBatteryIcon(Power.capacity)
}
