import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.config

PanelWindow {
  id: root
  anchors {
    top: true
    left: true
    right: true
  }
  implicitHeight: 30

  RowLayout {
    id: content
    anchors.fill: parent
    anchors.leftMargin: 20
    anchors.rightMargin: 20

    //Left
    RowLayout {
      id: left
      spacing: 10
      Layout.fillWidth: true

      Clock {}
      Calendar {}
    }

    //Spacer
    Item {
      Layout.fillWidth: true
    }

    //Middle
    RowLayout {
      id: middle
      spacing: 10
      Layout.fillWidth: true
      visible: !Config.appearance.hasNotch

      WeatherIndicator {}
    }

    //Spacer
    Item {
      Layout.fillWidth: true
    }

    //Right
    RowLayout {
      id: right
      spacing: 10
      Layout.fillWidth: true

      NetworkIndicator {}
      Battery {}
    }
  }
}
