import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.config

Item {
    id: root

    property alias text: label.text

    property real textScale: 1.25 // 2.0 = 24px, 3.0 = 36px

    // Tell the parent layout how much space the scaled text actually needs
    implicitWidth: label.implicitWidth * textScale
    implicitHeight: label.implicitHeight * textScale

    // Optional: set Layout properties if inside a RowLayout/ColumnLayout
    Layout.preferredWidth: implicitWidth
    Layout.preferredHeight: implicitHeight

    Text {
      id: label
      font.family: Config.appearance.fonts.text.family
      font.styleName: Config.appearance.fonts.text.style
      font.pixelSize: Config.appearance.fonts.text.pixelSize
      color: Config.appearance.colors.main.hex
      scale: 1.25 //size correction for pixel font
      smooth: false // disable smooth scaling to avoid blurry font scaling
    }
}
