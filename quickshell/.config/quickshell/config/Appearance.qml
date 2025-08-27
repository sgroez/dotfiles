import Quickshell.Io

JsonObject {
  property Fonts fonts: Fonts {}

  component Fonts: JsonObject {
    property Font text: Font {}
    property Font icon: Font {
      family: "Material Icons"
      style: "Round"
    }
  }

  component Font: JsonObject {
    property string family: "JetBrains Mono"
    property string style: "Medium"
  }
}
