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
    deno
    pnpm
    nodejs
    go
    gcc
    gh
    cargo
    rustc
    opencode
  ];
}
