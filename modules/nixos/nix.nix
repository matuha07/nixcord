{ ... }:
{

  nix.daemonCPUSchedPolicy = "idle";
  nix.daemonIOSchedClass = "idle";

  nix.optimise.automatic = true;
  nix.channel.enable = false;

  nix.gc = {
    automatic = true;
    persistent = false;
    options = "--delete-older-than 3d";
  };

  programs.nix-ld.enable = true;

  nixpkgs.config.allowUnfree = true;

}
