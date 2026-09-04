{...}:
{
  services.navidrome = {
    enable = true;
    openFirewall = true;
    settings.MusicFolder = "/home/media/music";
    group = "media";
  };

  systemd.services.navidrome.serviceConfig.ReadWritePaths = [ "/home/media" ];
}
