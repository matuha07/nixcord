{ pkgs, lib, config, ... }:
{
  security.pam.services.sudo_local.touchIdAuth = true;
}