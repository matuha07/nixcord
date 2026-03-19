{ pkgs, ...}:
{
  imports = [
    ./git.nix
    ./packages.nix
  ];
}