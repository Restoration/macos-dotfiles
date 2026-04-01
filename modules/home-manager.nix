{
  config,
  lib,
  pkgs,
  username,
  ...
}:
{
  imports = [
    ./pkgs
  ];

  home.username = username;
  home.homeDirectory = lib.mkForce "/Users/${username}";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
  };

  home.packages = with pkgs; [
    # 開発ツール
    deno
    nodejs_22
    python313
    pyenv
    terraform
    terraformer
    lazydocker
    lazygit
    lazysql
    gcc
    vim
    neovim
    tmux

    # Supabase
    supabase-cli

    # CLI ツール
    ranger

    # メディア・ライブラリ系
    ffmpeg
    tesseract
    imagemagick
    libarchive
    gnutls
    unbound
  ];
}
