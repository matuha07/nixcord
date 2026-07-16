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
    vim
    git
    jujutsu
    yazi
    nmap
    fd
    zoxide
    fzf
    neovim
    nushell

    # code
    gcc
    pnpm
    nodejs
    gh
  ];
}
