{pkgs, ...}: {
  home.packages = with pkgs; [
    # Nix Language Server
    nil

    # フォーマッタ・リンター
    nixfmt-rfc-style
    statix
    deadnix

    # デバッグ・調査
    nix-diff
    nix-tree
    nix-output-monitor
    nvd

    # ドキュメント検索
    manix
  ];
}
