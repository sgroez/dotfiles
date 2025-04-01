{ lib, config, ... }: {
  options = {
    printsystem.enable = lib.mkEnableOption "enables printing system";
  };

  config = lib.mkIf config.printsystem.enable {
    services.printing.enable = true;
    services.avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
  };
}
