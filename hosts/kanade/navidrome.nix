{...}:
{
  services.navidrome = {
    enable = true;
    openFirewall = true;
    settings.MusicFolder = "/home/media/music";
    group = "media";
  };
}
