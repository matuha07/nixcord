{ inputs, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    telegram-desktop
    vesktop
    inputs.helium.packages.x86_64-linux.default

    zed-editor
    kitty
    rustup

    proton-vpn

    libreoffice-stable
    krita
    mpv
    nicotine-plus
    qbittorrent
    obs-studio
    localsend

    wine64
    winetricks
    protontricks
    lutris
    protonup-qt
  ];

  programs.virt-manager.enable = true;
  programs.firefox.enable = true;
  programs.steam.enable = true;
  services.flatpak.enable = true;
}
