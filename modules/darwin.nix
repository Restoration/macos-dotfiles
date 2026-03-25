{ pkgs, ... }: {

  # Nix自体の設定（Flakesを有効にするために必須）
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Homebrewとの統合設定
  homebrew = {
    enable = true;
    
    # 設定ファイルにないツールを自動的に削除する（環境をクリーンに保つ）
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap"; # これで管理外のツールを掃除
    };

    # グローバルなCask引数（appdirの指定など）
    caskArgs = {
      appdir = "/Applications";
    };

    # Taps (サードパーティリポジトリ)
    taps = [
      "supabase/tap"
    ];

    # Brews (CLI) 
    brews = [];

    # Casks (GUI)
    casks = [
      "anydo"
      "appcleaner"
      "balenaetcher"
      "cursor"
      "coteditor"
      "docker"
      "figma"
      "firefox"
      "fork"
      "google-chrome"
      "microsoft-teams"
      "mullvadvpn"
      "onyx"
      "sitesucker-pro"
      "slack"
      "tableplus"
      "vlc"
      "visual-studio-code"
      "zeplin"
      "zoom"
      "kitty"
    ];
  };

  # macOSのシステムレベルの設定
  system.defaults = {
    dock.autohide = true;
    finder.AppleShowAllExtensions = true;
    NSGlobalDomain.AppleShowAllExtensions = true;
  };

  # システムのステートバージョン
  system.stateVersion = 4;
}