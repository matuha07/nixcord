{ pkgs, ... }:
{
  imports = [
    ../../modules/common
    ../../modules/nixos
    ./hardware-configuration.nix
    ./ssh.nix
    ./immich.nix
    ./caddy.nix
    ./firewall.nix
    ./qbittorrent.nix
    ./navidrome.nix
    ./lidarr.nix
    ./prowlarr.nix
  ];

  networking.hostName = "kanade";

  users.users.motya = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "podman"
      "media"
    ];
    home = "/home/motya";
  };

  users.groups.media = {};

  services.cloudflare-warp.enable = true;
  environment.systemPackages = [
       pkgs.cloudflare-warp
  ];

  hardware.enableRedistributableFirmware = true;
}
