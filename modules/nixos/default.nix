{ ... }:
{
  imports = [
    ./system.nix
    ./kde.nix
    ./nix.nix
    ./boot.nix
    ./network.nix
    ./packages.nix
    ./virtualization.nix
    ./docker.nix
  ];
}
