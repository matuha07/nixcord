{ pkgs, ... }:
{
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  environment.systemPackages = with pkgs; [
    kdePackages.kcalc
    kdePackages.kclock
    kdePackages.ksystemlog
    kdePackages.sddm-kcm
    kdePackages.kolourpaint
    kdePackages.kdenlive
    kdePackages.partitionmanager
  ];

}
