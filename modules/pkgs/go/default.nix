{ pkgs, ... }:
{
  programs.go = {
    enable = true;
    env.GOPATH = "/Users/develop/go";
    packages = {
      gopls = pkgs.gopls;
      delve = pkgs.delve;
      gotests = pkgs.gotests;
      impl = pkgs.impl;
      go-tools = pkgs.go-tools;
      wails = pkgs.wails;
    };
  };
}
