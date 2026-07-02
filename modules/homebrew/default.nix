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
      "balenaetcher"
      "chromium"
      "claude-code"
      "coteditor"
      "cmux"
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
