{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs_24
    nodePackages.npm
    pnpm
    yarn
    bun
    pkgs.typescript
    pkgs.nodemon
    pkgs.serve
    pkgs.eslint
    pkgs.eas-cli
    # LSPツールのインストール
    pkgs.typescript-language-server
    # Playwright用
    playwright-driver.browsers
  ];
}