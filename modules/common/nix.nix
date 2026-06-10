{ pkgs, ... }:
{

  environment.systemPackages = [
    pkgs.nix-output-monitor
    pkgs.nh
  ];

  nix.gc = {
    automatic = true;
    options = "--delete-older-than 3d";
  };

  nix.daemonCPUSchedPolicy = "idle";
  nix.daemonIOSchedClass = "idle";

  nix.optimise.automatic = true;
  nix.channel.enable = false;

}
