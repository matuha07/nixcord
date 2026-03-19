{
  system.defaults.NSGlobalDomain = {
    AppleShowAllFiles = true;
    AppleShowAllExtensions = true;

    "com.apple.springing.enabled" = true;
    "com.apple.springing.delay" = 0.0;
  };


  system.defaults.CustomSystemPreferences."com.apple.desktopservices" = {
    DSDontWriteNetworkStores = true;
    DSDontWriteUSBStores = true;
  };

  system.defaults.finder = {
    AppleShowAllExtensions = true;
    AppleShowAllFiles = true;

    ShowPathbar = true;
    ShowStatusBar = true;
  };

}