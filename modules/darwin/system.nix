{
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 6;
  system.primaryUser = "motya";

  system.defaults = {
    menuExtraClock.Show24Hour  = true;
    menuExtraClock.ShowSeconds = true;

    controlcenter.BatteryShowPercentage = true;
    controlcenter.Bluetooth             = true;
  };
}