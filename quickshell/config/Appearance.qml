import Quickshell.Io

JsonObject {
  property bool hasNotch: false
  property Fonts fonts: Fonts {}
  property Colors colors: Colors {}

  component Fonts: JsonObject {
    property Font text: Font {
      family: "JetBrains Mono"
      style: "Medium"
      pointSize: 11
    }
    property Font icon: Font {
      family: "Material Symbols Rounded"
      style: ""
      pointSize: 13
    }
  }

  component Colors: JsonObject {
    property Color main: Color {
      hex: "#faba38"
    }
    property Color darkAccent: Color {
      hex: "#a06419"
    }
    property Color brightAccent: Color {
      hex: "#ffee4f"
    }
  }

  //Type templates
  component Font: JsonObject {
    property string family: "Sans Serif"
    property string style: "Regular"
    property real pointSize: 10
  }

  component Color: JsonObject {
    property string hex: "FFFFFF"
  }
}
