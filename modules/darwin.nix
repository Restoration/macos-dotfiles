{ pkgs, ... }:
{
  imports = [
    ./homebrew
  ];

  system.primaryUser = "develop";

  nixpkgs.config.allowUnfree = true;

  # Determinate Nix を使用しているため、nix-darwinのNix管理を無効化
  nix.enable = false;

  # macOSのシステムレベルの設定
  system.defaults = {
    dock = {
      autohide = false;
      orientation = "right";
      show-recents = true;
      persistent-apps = [
        "/System/Applications/Apps.app"
        "/System/Applications/Mail.app"
        "/System/Applications/Calendar.app"
        "/Applications/Ghostty.app"
        "/Applications/Arc.app"
        "/Applications/Google Chrome.app"
        "/Applications/Firefox.app"
        "/Applications/Claude.app"
        "/Applications/Visual Studio Code.app"
        "/Applications/CotEditor.app"
        "/Applications/Fork.app"
        "/Applications/Docker.app"
        "/Applications/Slack.app"
        "/Applications/Figma.app"
        "/Applications/Affinity Photo.app"
        "/Applications/1Password.app"
        # "/Applications/zoom.us.app"
        # "/Applications/Microsoft Teams.app"
        "/System/Applications/System Settings.app"
      ];
    };
    finder.AppleShowAllExtensions = true;
    NSGlobalDomain.AppleShowAllExtensions = true;
  };

  # システムのステートバージョン
  system.stateVersion = 4;
}
