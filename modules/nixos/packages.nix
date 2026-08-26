{ inputs, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    tailscale

    inputs.agenix.packages.x86_64-linux.default
  ];
}
