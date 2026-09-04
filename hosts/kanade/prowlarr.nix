{ lib, ...}:
{
  services.prowlarr = {
    enable = true;
    openFirewall = true;
    user = "prowlarr";
    dataDir = "/home/media/prowlarr";
  };

  users.users.prowlarr = {
    extraGroups = [
      "media"
    ];
  };

  systemd.services.prowlarr.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindPaths = [ "/home/media" ];
  };
}
