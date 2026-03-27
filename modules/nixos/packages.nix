{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    traceroute
  ];
}
