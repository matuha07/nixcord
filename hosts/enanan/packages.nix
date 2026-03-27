{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    telegram-desktop
    kitty
    qbittorrent
    wine
    zed-editor
    vlc
    cargo
    rustc
    godot
    obs-studio
    nicotine-plus
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
}
