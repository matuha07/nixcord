{ ... }:
{
  imports = [
    ./system.nix
    ./nix.nix
    ./boot.nix
    ./network.nix
    ./packages.nix
    ./virtualization.nix
    ./docker.nix
    ./kernel.nix
  ];
}
