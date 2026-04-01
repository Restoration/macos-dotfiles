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
      "docker-desktop"
      "figma"
      "firefox"
      "fork"
      "ghostty"
      "google-chrome"
      "microsoft-teams"
      "slack"
      "visual-studio-code"
      "zoom"
    ];
  };
}
