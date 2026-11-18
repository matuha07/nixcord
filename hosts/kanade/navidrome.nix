{ lib, ...}:
{
  services.navidrome = {
    enable = true;
    openFirewall = true;
    settings.MusicFolder = "/home/media/music";
	  settings.Address = "0.0.0.0";
    group = "media";
  };

  systemd.services.navidrome.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };
}
