{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    telegram-desktop
    vesktop
    kitty
    qbittorrent
    wine64
    zed-editor
    vlc
    cargo
    rustc
    godot
    obs-studio
    nicotine-plus
    proton-vpn

    protonup-qt

    libreoffice-fresh

    krita

    localsend
    winetricks
    protontricks
    lutris
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
  programs.steam.enable = true;
  services.flatpak.enable = true;
}
