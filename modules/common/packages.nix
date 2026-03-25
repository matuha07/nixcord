{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # cli-tools
    bat
    ffmpeg
    curl
    fastfetch
    btop
    ripgrep
    tmux
    wget
    tree
    vim
    git
    jujutsu
    yazi
    nmap
    traceroute
    fd

    # code
    pnpm
    nodejs
    go
    gcc
    gh
    nixd
    nil
    opencode
  ];
}
