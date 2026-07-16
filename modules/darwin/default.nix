{ pkgs, ... }:
{
  imports = [
    ./security.nix
    ./system.nix
    ./nix.nix
    ./finder.nix
    ./dock.nix
  ];
}
