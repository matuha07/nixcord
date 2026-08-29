{ lib, pkgs, config, ... }:
{
  age.secrets.cloudflare-token.file = ../../secrets/secret1.age;

  services.caddy = {
    package = pkgs.caddy.withPlugins {
      plugins = [ "github.com/caddy-dns/cloudflare@v0.2.4" ];
      hash = "sha256-a875256c4a171d14cba5d8f727a9ad14ad42621997ce25565a9bc162d6cd8dfa";
    };
    enable = true;
    environmentFile = config.age.secrets.cloudflare-token.path;

    virtualHosts."immich.dogshit.engineer".extraConfig = ''
      tls {
        dns cloudflare {env.CF_API_TOKEN}
      }
      reverse_proxy http://127.0.0.1:2386
    '';
  };
}
