{...}:
{
  services.lidarr = {
    enable = true;
    openFirewall = true;
    user = "lidarr";
    group = "media";
    dataDir = "/home/media/lidarr";
  };

  systemd.services.lidarr.serviceConfig.ReadWritePaths = [ "/home/media" ];
}
