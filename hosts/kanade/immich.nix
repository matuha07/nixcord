{...}:
{
  services.immich = {
    enable = true;
    host = "0.0.0.0";
    port = 2386;
    mediaLocation = "/home/media/immich";
    openFirewall = true;
  };
}
