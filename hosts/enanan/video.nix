{ pkgs, ... }:
{
  services.xserver.enable = true;
  hardware.amdgpu.overdrive.enable = true;

  environment.systemPackages = with pkgs; [
    vulkan-tools
    vulkan-loader
    lact
    mangohud
  ];

  services.lact.enable = true;

  programs.gamemode.enable = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
