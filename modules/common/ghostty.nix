{ pkgs, lib, ... }:
{
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "Catppuccin Mocha";
      font-size = 11;

      window-width = 240;
      window-padding-x = 8;
      window-padding-y = 8;
    };
  };
}
