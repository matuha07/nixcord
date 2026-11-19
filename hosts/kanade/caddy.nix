{ lib, pkgs, config, ... }:
{

  services.caddy = {
    enable = false;

    globalConfig = ''
          acme_dns cloudflare {env.CF_API_TOKEN}
        '';

    virtualHosts."immich.dogshit.engineer".extraConfig = ''
      reverse_proxy http://127.0.0.1:2386
    '';

    virtualHosts."qbit.dogshit.engineer".extraConfig = ''
      reverse_proxy http://127.0.0.1:8080
    '';

    virtualHosts."lidarr.dogshit.engineer".extraConfig = ''
      reverse_proxy http://127.0.0.1:8686
    '';

    virtualHosts."navidrome.dogshit.engineer".extraConfig = ''
      reverse_proxy http://127.0.0.1:4533
    '';

    virtualHosts."slskd.dogshit.engineer".extraConfig = ''
      reverse_proxy http://127.0.0.1:5030
    '';

    virtualHosts."prowlarr.dogshit.engineer".extraConfig = ''
      reverse_proxy http://127.0.0.1:9696
    '';

  };
}
