{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    telegram-desktop
    kitty
    qbittorrent
    wine
    zed-editor
    vlc
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
}
