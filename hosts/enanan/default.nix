{ pkgs, ... }:
{
  imports = [
    ../../modules/common
    ../../modules/nixos
  ];

  networking.hostName = "enanan";

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
