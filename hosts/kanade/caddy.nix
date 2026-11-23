{ pkgs, config, ... }:
{

  services.caddy = {
    enable = true;

    package = pkgs.caddy.withPlugins {
      plugins = ["github.com/empressmarissa/caddy-dns-spaceship@v1.2.0"];
      hash = "sha256-n2VvdSXuvC7QMdSEaQfGGaBMDNzCYAjXB+WIzfnMbts=";
    };

    environmentFile = config.age.secrets.spaceship-env.path;

    globalConfig = ''
          acme_dns spaceship {
          api_key {$LIBDNS_SPACESHIP_APIKEY}
          api_secret {$LIBDNS_SPACESHIP_APISECRET}
          }
        '';

    virtualHosts."immich.coughing.baby".extraConfig = ''
      reverse_proxy http://127.0.0.1:2386
    '';

    virtualHosts."qbit.coughing.baby".extraConfig = ''
      reverse_proxy http://127.0.0.1:8080
    '';

    virtualHosts."lidarr.coughing.baby".extraConfig = ''
      reverse_proxy http://127.0.0.1:8686
    '';

    virtualHosts."navidrome.coughing.baby".extraConfig = ''
      reverse_proxy http://127.0.0.1:4533
    '';

    virtualHosts."slskd.coughing.baby".extraConfig = ''
      reverse_proxy http://127.0.0.1:5030
    '';

    virtualHosts."prowlarr.coughing.baby".extraConfig = ''
      reverse_proxy http://127.0.0.1:9696
    '';

    virtualHosts."grafana.coughing.baby".extraConfig = ''
      reverse_proxy http://127.0.0.1:3000
    '';

  };
}
