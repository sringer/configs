{ config, pkgs, ... }:

{
  home.username = "sringer";
  home.homeDirectory = "/home/sringer";

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;

  home.packages = [
    pkgs.fzf
    pkgs.z-lua
    pkgs.bash
    pkgs.git
    pkgs.neovim
    pkgs.exa
    pkgs.starship
    pkgs.gcc
    pkgs.direnv
    pkgs.kubectl
    pkgs.google-cloud-sdk
  ];

  imports = [
    ./starship.nix
    ./git.nix
  ];

  home.file = {
    ".bashrc".source = ./.bashrc;
    ".config/nix" = {
      source = ./nix;
      recursive = true;
    };
    ".config/nvim" = {
      source = ./nvim;
      recursive = true;
    };
  };
}
