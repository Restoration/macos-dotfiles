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
      "appcleaner"
      "arc"
      "cursor"
      "coteditor"
      "docker"
      "figma"
      "firefox"
      "fork"
      "google-chrome"
      "microsoft-teams"
      "onyx"
      "sitesucker-pro"
      "slack"
      "tableplus"
      "visual-studio-code"
      "zoom"
    ];
  };

  # macOSのシステムレベルの設定
  system.defaults = {
    dock = {
      autohide = true;
      show-recents = true;
      persistent-apps = [
        "/System/Library/CoreServices/Finder.app"
        "/System/Applications/Mail.app"
        "/System/Applications/App Store.app"
        "/Applications/Ghostty.app"
        "/Applications/Arc.app"
        "/Applications/Google Chrome.app"
        "/Applications/Firefox.app"
        "/System/Applications/Safari.app"
        "/Applications/Visual Studio Code.app"
        "/Applications/CotEditor.app"
        "/Applications/Fork.app"
        "/Applications/Docker.app"
        "/Applications/Figma.app"
        "/Applications/Slack.app"
        "/Applications/zoom.us.app"
        "/Applications/Microsoft Teams.app"
        "/System/Applications/System Settings.app"
      ];
    };
    finder.AppleShowAllExtensions = true;
    NSGlobalDomain.AppleShowAllExtensions = true;
  };

  # システムのステートバージョン
  system.stateVersion = 4;
}
