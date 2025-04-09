{...}: {
  plugins.copilot-vim = {
    enable = true;
    settings = {
      filetypes = {
        "*" = false;
      };
      workspace_folders = [
        "/home/sajenim/.repositories/dotfiles.nix/"
      ];
    };
  };
}
