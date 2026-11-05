{ config, ... }:
{
  boot = {
    kernelModules = [
      "kvm-intel"
      "wl"
      "applesmc"
    ];

  };
}
