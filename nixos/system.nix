{
  imports = [
    ./system/basesystem.nix
    ./system/networksystem.nix
    ./system/printsystem.nix
    ./system/usbmodeswitchsystem.nix
  ];

  printsystem.enable = true;
  usbmodeswitchsystem.enable = true;
}
