{ lib, config, ...}:
{
  age.secrets.slskd-env.file = ../../secrets/slskd.age;

  services.slskd = {
    enable = true;
    openFirewall = true;
    user = "slskd";
    group = "media";
    environmentFile = config.age.secrets.slskd-env.path;
  };

  systemd.services.slskd.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };
}
