{ pkgs, ... }:
{
  imports = [
    ../../modules/common
    ../../modules/nixos
    ./hardware-configuration.nix
    ./fonts.nix
    ./video.nix
    ./packages.nix
    ./kernel.nix
    ./network.nix
    ./kde.nix
    ./hardware.nix
  ];

  boot.kernelParams = [
    "usb-storage.quirks=0951:176b:u"
  ];
  networking.hostName = "enanan";

  users.users.motya = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "podman"
    ];

    shell = pkgs.nushell;

    home = "/home/motya";
  };
}
