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
      "claude-code"
      "cmux"
      "docker-desktop"
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
