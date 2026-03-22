{ pkgs, ... }:
{
  imports = [
    ../../modules/common
    ../../modules/nixos
    ./hardware-configuration.nix
    ./fonts.nix
    ./video.nix
    ./packages.nix
  ];

  networking.hostName = "enanan";

  users.users.motya = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];

    packages = with pkgs; [
      lutris
      winetricks
      protontricks
      librewolf
    ];
    home = "/home/motya";
  };


  programs.steam.enable = true;

  services.flatpak.enable = true;


  nixpkgs.config.allowUnfree = true;
}
