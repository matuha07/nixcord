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
    nerd-fonts.jetbrains-mono
    localsend
    winetricks
    protontricks
    librewolf
    nur.repos.lonerOrz.helium
    vesktop
    tailscale
    discord

    gzdoom

    xrdp
    xsettingsd
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
}
