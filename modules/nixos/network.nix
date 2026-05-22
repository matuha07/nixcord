{ pkgs, ... }:
{
  networking.networkmanager.enable = true;

  networking.nameservers = [
    "1.1.1.1"
    "1.0.0.1"
    "2606:4700:4700::1111"
    "2606:4700:4700::1001"
  ];

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
