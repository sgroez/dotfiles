{ pkgs, lib, config, ... }: {
  options = {
    huaweiusbmodem.enable = lib.mkEnableOption "enables mode switching for huawei usb 4G modem";
  };

  config = lib.mkIf config.huaweiusbmodem.enable {
    services.udev.extraRules = ''
      ATTRS{idVendor}=="12d1", ATTRS{idProduct}=="1f01", RUN+="${pkgs.usb-modeswitch}/bin/usb_modeswitch -v 12d1 -p 1f01 -M '55534243123456780000000000000011062000000100000000000000000000'"
    '';
  };
}
