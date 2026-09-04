{}: {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8080;
    user = "qbittorrent";
    group = "media";
  };
}
