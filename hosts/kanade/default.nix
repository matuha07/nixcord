{ ... }:
{
  imports = [
    ../../modules/common
    ../../modules/nixos
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

  nixpkgs.config.allowUnfree = true;
  hardware.enableRedistributableFirmware = true;
}
