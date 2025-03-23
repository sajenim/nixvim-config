{...}: {
  plugins.copilot-vim = {
    enable = true;
    settings = {
      filetypes = {
        "*" = false;
        "nix" = true;
      };
      workspace_folders = [
        "/home/sajenim/.repositories/dotfiles.nix/"
      ];
    };
  };
}
