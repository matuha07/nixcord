{ pkgs, ... }:
{
  services.xserver.enable = true;

  environment.systemPackages = with pkgs; [
    vulkan-tools
    vulkan-loader
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
