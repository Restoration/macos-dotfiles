{ pkgs, ... }:
{
  programs.go = {
    enable = true;
    goPath = "go";
    packages = with pkgs; [
      gopls # Language Server
      delve # Debugger (dlv)
      gotests # Table-driven tests generator
      impl # Interface stubs generator
      staticcheck # Linter
      wails # GUI framework CLI (もし必要なら)
    ];
  };
}
