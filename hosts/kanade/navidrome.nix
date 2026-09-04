{ lib, ...}:
{
  services.navidrome = {
    enable = true;
    openFirewall = true;
    settings.MusicFolder = "/home/media/music";
    group = "media";
  };

  systemd.services.navidrome.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    ReadWritePaths = [ "/home/media" ];
  };
}
