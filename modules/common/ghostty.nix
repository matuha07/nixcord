{ pkgs, lib, ... }:
{
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "Catppuccin Mocha";
      font-size = 10;

      window-padding-x = 2;
      window-padding-y = 2;
    };
  };
}
