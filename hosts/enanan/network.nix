{ ... }:
{
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
}
