{ config, pkgs, username, ... }:
{
  imports = [
    ./zsh.nix
  ];

  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
  };

  programs.go = {
    enable = true;
    goPath = "go";
    packages = with pkgs; [
        gopls       # Language Server
        delve       # Debugger (dlv)
        gotests     # Table-driven tests generator
        impl        # Interface stubs generator
        staticcheck # Linter
        wails       # GUI framework CLI (もし必要なら)
    ];
  };

  programs.git = {
    enable = true;
  };

  home.packages = with pkgs; [
    # 開発ツール
    deno
    nodejs_20
    python310
    pyenv
    terraform
    terraformer
    lazydocker
    gcc
    
    # Supabase
    supabase-cli

    # メディア・ライブラリ系
    ffmpeg
    tesseract
    imagemagick
    libarchive
    gnutls
    unbound
  ];
}