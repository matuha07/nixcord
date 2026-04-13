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
    proton-vpn
    libreoffice-fresh
    krita
    nerd-fonts.jetbrains-mono
    localsend
    lutris
    winetricks
    protontricks
    librewolf
    nur.repos.lonerOrz.helium
    vesktop

    xrdp
    xsettingsd
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
}
