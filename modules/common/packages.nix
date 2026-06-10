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
    (if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty)
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
    pnpm
    nodejs
    go
    gcc
    gh
    nixd
    nil
    cargo
    rustc
    opencode
  ];
}
