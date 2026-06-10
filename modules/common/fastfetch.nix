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
        "kernel"
        "uptime"
        "packages"
        "shell"
        "resolution"
        "de"
        "wm"
        "theme"
        "terminal"
      ];
    };
  };
}
