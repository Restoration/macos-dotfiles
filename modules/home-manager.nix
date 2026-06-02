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
    trivy

    # Supabase
    supabase-cli

    # クラウド CLI
    google-cloud-sdk
    awscli2

    # CLI ツール
    tree
    glow
    jq
    yq

    # メディア・ライブラリ系
    ffmpeg

    # OCR 関連
    yazi
    tesseract
    imagemagick
    libarchive

    # DNS 関連
    gnutls
    unbound
  ];
}
