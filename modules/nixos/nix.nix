{ ... }:
{

  nix.daemonCPUSchedPolicy = "idle";
  nix.daemonIOSchedClass = "idle";

  nix.optimise.automatic = true;
  nix.channel.enable = false;

  nix.gc = {
    automatic = true;
    options = "--delete-older-than 3d";
  };

  nixpkgs.config.allowUnfree = true;

}
