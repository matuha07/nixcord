{ pkgs, lib, ... }:
{
  boot.kernelParams = [
    "quiet"
    "splash"
  ];

  boot.plymouth.enable = true;
}
