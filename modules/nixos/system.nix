{ pkgs, ... }:

{
  services.openssh.enable = true;

  time.timeZone = "Asia/Almaty";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  boot.kernelParams = [
    "amdgpu.runpm=0"

    "pcie_aspm=off"
  ];

  hardware.bluetooth.enable = true;
  system.stateVersion = "25.11";
}
