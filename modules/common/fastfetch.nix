{ ... }:
{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "small";
      };
      modules = [
        "host"
        "os"
        "cpu"
        "gpu"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "de"
        "terminal"
      ];
    };
  };
}
