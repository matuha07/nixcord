{ ... }:
{
  services.caddy = {
    enable = true;
    virtualHosts."immich.kanade.tail25bcd4.ts.net".extraConfig = "
      reverse_proxy http://127.0.0.1:2386
    ";
  };
}
