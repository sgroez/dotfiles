{
  imports = [
    ./system/basesystem.nix
    ./system/networksystem.nix
    ./system/printsystem.nix
    ./system/huaweiusbmodem.nix
  ];

  printsystem.enable = true;
  huaweiusbmodem.enable = true;
}
