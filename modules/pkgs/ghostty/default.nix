{
  # Gosttyはdarwinで管理し、設定のみhome-managerで管理する
  programs.ghostty = {
    enable = true;
    package = null;
    settings = {
      theme = "Catppuccin Mocha";
      window-padding-x = 20;
      window-padding-y = 5;
      window-padding-balance = true;
      window-theme = "ghostty";
      background-opacity = 0.85;
      background-blur-radius = 20;
      macos-titlebar-style = "transparent";
      window-save-state = "always";
      macos-window-shadow = true;
      clipboard-paste-protection = true;
      mouse-hide-while-typing = true;
    };
  };
}
