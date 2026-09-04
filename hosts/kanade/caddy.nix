{ lib, pkgs, config, ... }:
{
  age.secrets.cloudflare-token.file = ../../secrets/secret1.age;

  services.caddy = {
    package = pkgs.caddy.withPlugins {
      plugins = [ "github.com/caddy-dns/cloudflare@v0.2.4" ];
      hash = "sha256-7GoH8YLCoPmPExQxoga2FHB58zQDoZVf1BBwkVi0SsQ=";
    };
    enable = true;
    environmentFile = config.age.secrets.cloudflare-token.path;

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

  };
}
