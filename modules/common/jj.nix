{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jujutsu
  ];

  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        name = "motya";
        email = "mmotyaa@proton.me";
      };
      ui = {
        editor = "nvim";
      };
    };
  };
}
