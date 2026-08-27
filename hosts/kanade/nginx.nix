{ ... }:
{
  services.nginx = {
    enable = true;

    virtualHosts."immich.kanade.local" = {
      locations."/" = {
        proxyPass = "http://127.0.0.1:2386";
        extraConfig = ''
          proxy_request_buffering off;
          proxy_set_header Host              $host;
          proxy_set_header X-Real-IP         $remote_addr;
          proxy_set_header X-Forwarded-For   $proxy_add_x_forwarded_for;
          proxy_set_header X-Forwarded-Proto $scheme;
          proxy_set_header Upgrade           $http_upgrade;
          proxy_set_header Connection        "upgrade";
          proxy_http_version 1.1;
          proxy_redirect     off;
          proxy_read_timeout 600s;
          proxy_send_timeout 600s;
          send_timeout       600s;
        '';
      };
    };
  };
}
