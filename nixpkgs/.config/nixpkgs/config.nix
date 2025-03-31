{
  packageOverrides = pkgs: with pkgs; {
    systemPackages = pkgs.buildEnv {
      name = "system-packages";
      paths = [
        kitty
	git
	gh
	stow
	neovim
	jetbrains-mono
      };
    };
  };
}
