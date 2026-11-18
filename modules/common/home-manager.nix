{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./jj.nix
    ./nushell.nix
    ./zoxide.nix
  ];

  home.username = "motya";
  home.homeDirectory = if pkgs.stdenv.hostPlatform.isDarwin then "/Users/motya" else "/home/motya";

  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "26.11";

}
