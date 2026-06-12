{ pkgs, ... }:
{
  networking.networkmanager.enable = true;

  services.tailscale = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    dnsmasq
  ];

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      22
      80
      53317
      6767
    ];

    allowedUDPPorts = [
      53
      53317
      6767
    ];
  };

  networking.firewall.trustedInterfaces = [ "virbr0" ];

}
