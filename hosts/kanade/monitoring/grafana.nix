{...}:
{
  services.grafana = {
    enable = true;

    settings.server = {
      http_addr = "127.0.0.1";
      http_port = 3000;
    };

    settings.security.secret_key = "SW2YcwTIb9zpOOhoPsMm";
  };
}
