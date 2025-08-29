import Quickshell
import QtQuick
import QtQuick.Layouts

PanelWindow {
  id: root
  anchors {
    top: true
    left: true
    right: true
  }

  implicitHeight: 30

  RowLayout {
    id: barContent
    anchors.centerIn: parent
    spacing: 10

    //Components
    Clock {}
    Calendar {}
    Battery {}
    NetworkIndicator {}
    WeatherIndicator {}
  }
}
