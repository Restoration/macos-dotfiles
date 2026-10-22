{ pkgs, ... }:
{
  imports = [
    ./homebrew
  ];

  system.primaryUser = "develop";

  nixpkgs.config.allowUnfree = true;

  # Determinate Nix を使用しているため、nix-darwinのNix管理を無効化
  nix.enable = false;

  # eMudhra CA鍵漏洩 (2026-10) 対応: 侵害されたemSignルートを信頼ストアから除外
  # nixpkgs-unstableのcacertが3.131.1以上になったら削除
  # https://discuss.python.org/t/information-for-python-users-regarding-emudhra-emsign-ca-certificate-security-incident/109576/
  security.pki.caCertificateBlacklist = [
    "emSign Root CA - C1"
    "emSign ECC Root CA - C3"
    "emSign ECC Root CA - G3"
  ];

  # macOSのシステムレベルの設定
  system.defaults = {
    dock = {
      autohide = false;
      orientation = "right";
      show-recents = true;
      persistent-apps = [
        "/System/Applications/Mail.app"
        "/System/Applications/Calendar.app"
        "/Applications/Ghostty.app"
        "/Applications/Google Chrome.app"
        "/Applications/Firefox.app"
        "/Applications/Claude.app"
        "/Applications/Codex.app"
        "/Applications/cmux.app"
        "/Applications/Visual Studio Code.app"
        "/Applications/Docker.app"
        "/Applications/Slack.app"
        "/Applications/Affinity Photo.app"
        "/Applications/Affinity Designer.app"
        "/Applications/Final Cut Pro.app"
        "/Applications/1Password.app"
        "/Applications/zoom.us.app"
        "/Applications/Microsoft Teams.app"
        "/System/Applications/System Settings.app"
        "/System/Applications/Apps.app"
      ];
    };
    NSGlobalDomain.AppleShowAllExtensions = true;
  };

  # システムのステートバージョン
  system.stateVersion = 4;
}
