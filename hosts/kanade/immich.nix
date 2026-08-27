{ lib, ...}:
{
  services.immich = {
    enable = true;
    host = "0.0.0.0";
    port = 2386;
    openFirewall = true;

  };

  systemd.services.immich-server.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };

  systemd.services.immich-machine-learning.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };

}
