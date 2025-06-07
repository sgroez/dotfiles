{ pkgs, lib, config, ... }: {
  options = {
    stenokeyboard.enable = lib.mkEnableOption "sets udev rules for web interface of javelin steno keyboard";
  };

  config = lib.mkIf config.stenokeyboard.enable {
    services.udev.extraRules = ''
      SUBSYSTEM=="hidraw", ATTRS{idVendor}=="9000", ATTRS{idProduct}=="400d", MODE="0666"    '';
  };
}
