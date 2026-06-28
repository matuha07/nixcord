{ pkgs, ... }:
{
  services.xserver.enable = true;

  boot.kernelModules = [ "amdgpu" ];

  environment.systemPackages = with pkgs; [
    vulkan-tools
    vulkan-loader
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
