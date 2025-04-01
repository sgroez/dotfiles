{ pkgs, lib, config, ... }: {

  options = {
    devpackages.enable = lib.mkEnableOption "enables dev packages module";
  };

  config = lib.mkIf config.devpackages.enable {
    environment.systemPackages = with pkgs; [
      docker
      docker-compose
      go
    ];

    virtualisation.docker.enable = true;
  };

}
