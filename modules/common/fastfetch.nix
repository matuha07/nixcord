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
        "memory"
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
