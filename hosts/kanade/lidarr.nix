{lib, ...}:
{
  services.lidarr = {
    enable = true;
    openFirewall = true;
    user = "lidarr";
    group = "media";
    dataDir = "/home/media/lidarr";
  };

  systemd.services.lidarr.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
    UMask = lib.mkForce "0002";
  };
}
