{ lib, ...}:
{
  services.immich = {
    enable = true;
    host = "0.0.0.0";
    port = 2386;
    mediaLocation = "/home/media/immich";
    openFirewall = true;
    machine-learning.enable = false;
  };

  users.users.immich = {
    extraGroups = [
      "media"
    ];
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
