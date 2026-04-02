{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs
    yarn
    pnpm
    bun
    nodePackages.typescript
    nodePackages.nodemon
    nodePackages.serve
    nodePackages.eslint
    nodePackages.eas-cli
    # LSPツールのインストール
    nodePackages.typescript-language-server
    # Playwright用
    chromium
    playwright-driver.browsers
  ];
}