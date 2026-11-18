{ ... }:
{

  nix.daemonCPUSchedPolicy = "idle";
  nix.daemonIOSchedClass = "idle";

  nix.optimise.automatic = true;
  nix.channel.enable = false;

  programs.nix-ld.enable = true;

  nixpkgs.config.allowUnfree = true;

}
