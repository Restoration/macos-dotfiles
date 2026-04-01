{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    history = {
      size = 10000;
      save = 10000;
      ignoreDups = true;
      ignoreSpace = true;
      share = true;
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" ];
    };

    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
        file = "share/zsh-autosuggestions/zsh-autosuggestions.zsh";
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
        file = "share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
      }
      {
        name = "zsh-history-substring-search";
        src = pkgs.zsh-history-substring-search;
        file = "share/zsh-history-substring-search/zsh-history-substring-search.zsh";
      }
    ];

    shellAliases = {
      check_nodem = "find . -name 'node_modules' -type d -prune -print | xargs du -chs";
      clean_dsstore = "sudo find . -name '.DS_Store' -print -delete";
      clean_nodem = "find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \\;";
      ldocker = "lazydocker";
      lgit = "lazygit";
      ll = "ls -l";
      lsql = "lazysql";
      r = "ranger";
      update = "darwin-rebuild switch --flake";
      v = "vim";
    };

    sessionVariables = {
      GOPATH = "$HOME/go";
      PYENV_ROOT = "$HOME/.pyenv";
    };

    initContent = ''
      export PATH="$PYENV_ROOT/bin:$PATH"
      eval "$(pyenv init --path)"
      eval "$(pyenv init -)"
      export PATH="$GOPATH/bin:$PATH"

      if [[ -n $GHOSTTY_RESOURCES_DIR ]]; then
        source "$GHOSTTY_RESOURCES_DIR"/shell-integration/zsh/ghostty-integration
      fi
    '';
  };
}
