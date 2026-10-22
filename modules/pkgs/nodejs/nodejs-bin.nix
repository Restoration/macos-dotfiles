# nixpkgsへの反映待ちの間、nodejs.org公式のビルド済みバイナリを使う
# 24.22.1: 2026-10-21 セキュリティリリース (eMudhra CA鍵漏洩対応 / CVE-2026-111497 他)
# https://nodejs.org/en/blog/vulnerability/october-2026-security-releases
# nixpkgsのnodejs_24が24.22.1以上になったら削除してnodejs_24に戻す
{pkgs, ...}:
pkgs.stdenvNoCC.mkDerivation rec {
  pname = "nodejs-bin";
  version = "24.22.1";

  src = pkgs.fetchurl {
    url = "https://nodejs.org/dist/v${version}/node-v${version}-darwin-arm64.tar.gz";
    sha256 = "89c682593d76cd44233fa53b1563264e7de9cbb189cad169135c5b4fadfbc0a7";
  };

  dontConfigure = true;
  dontBuild = true;
  dontFixup = true;

  installPhase = ''
    mkdir -p $out
    cp -R bin include lib share $out/
  '';
}
