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
    packages = with pkgs; [
      tree
      vim
    ];
  };

  nixpkgs.config.allowUnfree = true;
}
