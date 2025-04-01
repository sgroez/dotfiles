{ pkgs, lib, config, ... }: {
  imports = [
    ./packages/basepackages.nix
    ./packages/devpackages.nix
    ./packages/desktopenvpackages.nix
    ./packages/guipackages.nix
  ];
}
