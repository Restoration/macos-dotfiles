{
  config,
  pkgs,
  username,
  ...
}:
{
  imports = [
    ./pkgs
  ];

  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

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
