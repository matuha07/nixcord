{ pkgs, lib, ... }:
{
  boot.kernelPackages = lib.mkForce pkgs.linuxPackages_xanmod_latest;

  boot.kernelParams = [
    "quiet"
    "splash"
  ];
}
