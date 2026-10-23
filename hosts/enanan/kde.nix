{ pkgs, ... }:
{
  services.desktopManager.plasma6.enable = true;
  services.displayManager.plasma-login-manager.enable = true;

  environment.systemPackages = with pkgs; [
    kdePackages.kcalc
    kdePackages.kclock
    kdePackages.ksystemlog
    kdePackages.sddm-kcm
    kdePackages.kolourpaint
    kdePackages.kdenlive
    kdePackages.partitionmanager
  ];

  environment.plasma6.excludePackages = [
    pkgs.kdePackages.elisa
    pkgs.kdePackages.plasma-browser-integration
  ];

  programs.kde-pim.enable = false;

}
