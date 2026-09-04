{lib, ...}: {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8080;
    user = "qbittorrent";
    group = "media";
  };

  systemd.services.lidarr.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    ReadWritePaths = [ "/home/media" ];
  };
}
