{ pkgs, config, ... }:
{
  programs.go = {
    enable = true;
    env.GOPATH = "${config.home.homeDirectory}/go";
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
