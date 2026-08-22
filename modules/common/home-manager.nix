{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./jj.nix
    ./nushell.nix
    ./fastfetch.nix
    ./zoxide.nix
  ];

  home.username = "motya";
  home.homeDirectory = if pkgs.stdenv.hostPlatform.isDarwin then "/Users/motya" else "/home/motya";

  programs.home-manager.enable = true;

  home.stateVersion = "25.11";

}
