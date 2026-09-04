{ inputs, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    tailscale
    podman-compose
    inputs.agenix.packages.x86_64-linux.default
  ];
}
