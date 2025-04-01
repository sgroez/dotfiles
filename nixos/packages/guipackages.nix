{ pkgs, lib, config, ... }: {
  options = {
    guipackages.enable = lib.mkEnableOption "enables gui packages module";
  };

  config = lib.mkIf config.guipackages.enable {
    nixpkgs.config = {
      allowUnfree = true;
    };
    users.users.sim.packages = with pkgs; [
      google-chrome
      vscode
      gimp
      blender
      postman
      audacity
    ];
  };
}
