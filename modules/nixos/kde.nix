{ pkgs, ... }:
{
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;

  environment.systemPackages = with pkgs; [
    kdePackages.kcalc
    kdePackages.kclock
    kdePackages.ksystemlog
    kdePackages.sddm-kcm
    kdePackages.kolourpaint
  ];

}
