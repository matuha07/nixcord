{ lib, ...}:
{
  services.prowlarr = {
    enable = true;
    openFirewall = true;
    dataDir = "/home/media/prowlarr";
  };

  users.users.prowlarr = {
    isSystemUser = true;
    group = "media";
  };

  systemd.services.prowlarr.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };
}
