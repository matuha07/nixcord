{ ... }:
{
  imports = [
    ../../modules/common
    ../../modules/nixos
    ./hardware-configuration.nix
    ./fonts.nix
    ./video.nix
    ./packages.nix
    ./kernel.nix
  ];

  networking.hostName = "enanan";

  users.users.motya = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "adbusers"
    ];
    home = "/home/motya";
  };

  programs.steam.enable = true;
  services.flatpak.enable = true;
  nixpkgs.config.allowUnfree = true;
}
