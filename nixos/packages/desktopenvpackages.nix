{ pkgs, lib, config, ... }: {
  
  options = {
    desktopenvpackages.enable = lib.mkEnableOption "enables desktop environment packages module";
  };

  config = lib.mkIf config.desktopenvpackages.enable {
    programs.hyprland.enable = true;

    environment.systemPackages = with pkgs; [
      brightnessctl
      pavucontrol
      fuzzel
      waybar
    ];
  };
}
