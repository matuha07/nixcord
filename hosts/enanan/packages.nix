{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    telegram-desktop
    ghostty
    qbittorrent
    wine
    zed-editor
    vlc
    cargo
    rustc
    godot
    obs-studio
    nicotine-plus
    proton-vpn

    libreoffice-fresh

    krita

    localsend
    winetricks
    protontricks
    lutris
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
}
