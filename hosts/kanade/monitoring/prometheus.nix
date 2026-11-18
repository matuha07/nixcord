{ ... }:
{
  services.prometheus = {
    enable = true;
    port = 9090;

    exporters = {
      node = {
        enable = true;
        enabledCollectors = [
          "systemd"
        ];

        listenAddress = "127.0.0.1";
      };

      smartctl = {
        enable = true;
        port = 9633;
        listenAddress = "127.0.0.1";
      };

    };

    scrapeConfigs = [
      {
        job_name = "node";

        static_configs = [
          {
            targets = [ "127.0.0.1:9100" ];
          }
        ];
      }
      {
        job_name = "smartctl";
        static_configs = [
          {
            targets = [ "127.0.0.1:9633" ];
          }
        ];
      }
    ];
  };

}
