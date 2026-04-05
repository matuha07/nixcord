{ ... }:
{
  imports = [
    ../../modules/nixos/boot.nix
    ../../modules/nixos/nix.nix
    ../../modules/nixos/network.nix
    ../../modules/nixos/packages.nix
    ../../modules/nixos/docker.nix
    ./hardware-configuration.nix
    ../../modules/nixos/system.nix
  ];

  networking.hostName = "kanade";

  users.users.motya = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    home = "/home/motya";
  };

  nixpkgs.config.allowUnfree = true;
}
