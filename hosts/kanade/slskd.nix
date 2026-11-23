{ lib, config, ...}:
{
  services.slskd = {
    enable = true;
    openFirewall = true;
    user = "slskd";
    group = "media";
    environmentFile = config.age.secrets.slskd.path;
    settings = {
      shares.directories = [ "/home/media/music" ];
    };
  };

  systemd.services.slskd.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };
}
