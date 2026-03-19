{ pkgs, ... }:
{
  imports = [
    ./git.nix
  ];

  home.username = "motya";
  home.homeDirectory = if pkgs.stdenv.isDarwin then "/Users/motya" else "/home/motya";

  programs.home-manager.enable = true;

  home.stateVersion = "25.11";

}
