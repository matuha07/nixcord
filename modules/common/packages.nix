{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    bat
    go
    curl
    fastfetch
    gh
    btop
    pnpm 
    nodejs
    ffmpeg
    ripgrep
    tmux
    wget
    tree
  ];
}
