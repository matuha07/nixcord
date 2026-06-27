{ config, ... }:
{
  imports = [
    ../../modules/nixos/boot.nix
    ../../modules/nixos/nix.nix
    ../../modules/nixos/network.nix
    ../../modules/nixos/packages.nix
    ../../modules/nixos/docker.nix
    ./hardware-configuration.nix
    ../../modules/nixos/system.nix
  ];

  networking.hostName = "kanade";

  users.users.motya = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    home = "/home/motya";
  };

  boot = {
    initrd.availableKernelModules = [
      "ohci_pci"
      "ehci_pci"
      "ahci"
      "firewire_ohci"
      "usb_storage"
      "usbhid"
      "sd_mod"
      "sr_mod"
      "sdhci_pci"
    ];

    initrd.kernelModules = [ ];

    kernelModules = [
      "kvm-intel"
      "wl"
      # https://github.com/torvalds/linux/blob/master/drivers/hwmon/applesmc.c
      # this is really not necessary, but have put it in anyway as its for mac
      # it wouldnt even be required for the NAS
      "applesmc"
    ];
    extraModulePackages = [
      # install broadcom driver for macos wifi
      config.boot.kernelPackages.broadcom_sta
    ];
  };

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE9UcVPDl+dOU+j1yzycCzsUrEPjJ+QxY6ntIL91UecH mmotyaa@proton.me"
  ];

  services.openssh.enable = true;

  nixpkgs.config.allowUnfree = true;
  hardware.enableRedistributableFirmware = true;

}
