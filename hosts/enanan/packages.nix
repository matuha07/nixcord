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
    onlyoffice-desktopeditors

    krita

    localsend
    winetricks
    protontricks
    lutris

    pgadmin4

    xrdp
    xsettingsd
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
}
