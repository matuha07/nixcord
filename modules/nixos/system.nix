{ ... }:

{
  services.openssh.enable = true;

  time.timeZone = "Asia/Almaty";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  i18n.defaultLocale = "ru_RU.UTF-8";
  i18n.extraLocales = [ "en_US.UTF-8/UTF-8" ];

  hardware.bluetooth.enable = true;
  system.stateVersion = "25.11";
}
