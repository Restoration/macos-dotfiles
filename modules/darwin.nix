{ pkgs, ... }:
{
  imports = [
    ./homebrew
  ];

  system.primaryUser = "develop";

  nixpkgs.config.allowUnfree = true;

  # Nix自体の設定（Flakesを有効にするために必須）
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

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
