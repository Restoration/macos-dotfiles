{ ... }:
{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    caskArgs = {
      appdir = "/Applications";
    };

    brews = [ ];

    casks = [
      "appcleaner"
      "arc"
      "claude-code"
      "cursor"
      "coteditor"
      "docker"
      "figma"
      "firefox"
      "fork"
      "google-chrome"
      "microsoft-teams"
      "sitesucker-pro"
      "slack"
      "tableplus"
      "visual-studio-code"
      "zoom"
    ];
  };
}
