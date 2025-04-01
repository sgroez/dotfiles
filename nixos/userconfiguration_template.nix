{ pkgs, ... }: {
  users.users.username = {
    isNormalUser = true;
    description = "";
    extraGroups = [ "wheel" ]; #add groups like networkmanager or docker
    packages = with pkgs; [];
  };
}
