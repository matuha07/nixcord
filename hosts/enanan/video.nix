{ pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];
  boot.initrd.kernelModules = [ "amdgpu" ];

  environment.systemPackages = with pkgs; [
    vulkan-tools
    vulkan-loader
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
