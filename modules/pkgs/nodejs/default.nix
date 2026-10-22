{pkgs, ...}: {
  home.packages = with pkgs; [
    (import ./nodejs-bin.nix {inherit pkgs;})
    pnpm
    yarn
    bun
    pkgs.typescript
    pkgs.nodemon
    pkgs.serve
    pkgs.eslint
    pkgs.prettier
    pkgs.biome
    pkgs.eas-cli
    # LSPツールのインストール
    pkgs.typescript-language-server
    # Playwright用
    playwright-driver.browsers
  ];
}