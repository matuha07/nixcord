{ config, ... }:
{
  boot = {
    kernelModules = [
      "kvm-intel"
      "wl"
      "applesmc"
    ];

    extraModulePackages = [
      config.boot.kernelPackages.broadcom_sta
    ];
  };
}
