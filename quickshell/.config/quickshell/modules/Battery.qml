import Quickshell
import Quickshell.Services.UPower
import QtQuick
import qs.components
import qs.utils

Icon {
  id: root
  text: Icons.getBatteryIcon(UPower.displayDevice.percentage * 100)
}
