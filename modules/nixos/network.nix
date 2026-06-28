{ pkgs, ... }:
{
  networking.networkmanager.enable = true;

  services.tailscale = {
    enable = true;
  };

  networking.firewall.trustedInterfaces = [ "virbr0" ];
}
