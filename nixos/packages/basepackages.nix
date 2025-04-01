{ pkgs, lib, config, ... }: {
  environment.systemPackages = with pkgs; [
    kitty
    git
    gh
    stow
    neovim
    tealdeer
    jetbrains-mono
  ];
}
