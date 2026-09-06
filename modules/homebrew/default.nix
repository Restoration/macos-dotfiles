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
      "1password"
      "appcleaner"
      "chatgpt"
      "claude"
      "claude-code"
      "cmux"
      "codex"
      "codex-app"
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
