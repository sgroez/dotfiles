{
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    pianoteq = pkgs.callPackage /home/sim/Github/customNixPackages/pianoteq/default.nix { };
    systemPackages = pkgs.buildEnv {
      name = "system-packages";
      paths = [
        kitty
	git
	gh
	stow
	neovim
	lynx
      ];
    };
    devPackages = pkgs.buildEnv {
      name = "development-packages";
      paths = [
        docker
	docker-compose
	go
      ];
    };
    fontPackages = pkgs.buildEnv {
      name = "font-packages";
      paths = [
	jetbrains-mono
      ];
    };
    guiPackages = pkgs.buildEnv {
      name = "gui-packages";
      paths = [
	google-chrome
	fuzzel
	waybar
	pavucontrol
	brightnessctl
	vscode
	gimp
	blender
	postman
	audacity
	pianoteq
      ];
    };
  };
}
