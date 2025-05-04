{
  imports = [
    ./packages/basepackages.nix
    ./packages/devpackages.nix
    ./packages/desktopenvpackages.nix
    ./packages/guipackages.nix
  ];

  desktopenvpackages.enable = true;
  devpackages.enable = true;
  guipackages.enable = true;
}
