{ ... }:
{
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "zstd";
    priority = 100;
  };

  systemd.oomd.enable = true;

  services.fwupd.enable = true;

  hardware.enableRedistributableFirmware = true;

  hardware.bluetooth.enable = true;
}
