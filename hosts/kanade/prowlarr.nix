{ lib, ...}:
{
  services.prowlarr = {
    enable = true;
    openFirewall = true;
    user = "prowlarr";
    group = "media";
    dataDir = "/home/media/prowlarr";
  };

  systemd.services.prowlarr.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };
}

}
