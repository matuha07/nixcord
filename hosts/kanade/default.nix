{ ... }:
{
  imports = [
    ../../modules/common
    ../../modules/nixos
    ./hardware-configuration.nix
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
  hardware.enableRedistributableFirmware = true;
}
