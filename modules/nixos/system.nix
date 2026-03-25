{ pkgs, ... }:

{
  services.openssh.enable = true;

  time.timeZone = "Asia/Almaty";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  hardware.bluetooth.enable = true;

  services.thermald.enable = true;

  system.stateVersion = "25.11";
}
