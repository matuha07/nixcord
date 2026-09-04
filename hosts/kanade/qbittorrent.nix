{lib, ...}: {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8080;
    user = "qbittorrent";
    group = "media";
  };

  systemd.services.qbittorrent.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };
}
