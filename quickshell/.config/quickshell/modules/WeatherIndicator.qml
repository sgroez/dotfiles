import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.components
import qs.services
import qs.utils

RowLayout {
  id: root
  StyledText {
    text: `${Location.city}: ${Weather.temp}`
  }
  Icon {
    text: Icons.getWeatherIcon(Weather.code)
  }
}
