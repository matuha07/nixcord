{ pkgs, ... }:
{

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.systemPackages = [
    pkgs.nix-output-monitor
    pkgs.nh
    pkgs.nixd
    pkgs.nixfmt
  ];

  nix.settings = {
    trusted-users = [ "root" "motya" ];

    substituters = [
      "https://nixos-cache-proxy.cofob.dev"
      "https://cache.nixos.kz"
      "https://nix-community.cachix.org"
      "https://cache.nixos.org"
    ];

    trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };
}
