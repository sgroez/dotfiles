{
  imports = [
    ./system/basesystem.nix
    ./system/networksystem.nix
    ./system/printsystem.nix
    ./system/huaweiusbmodem.nix
    ./system/stenokeyboard.nix
  ];

  printsystem.enable = true;
  huaweiusbmodem.enable = true;
  stenokeyboard.enable = true;
}
