{...}: {
  plugins.obsidian = {
    enable = true;
    settings = {
      completion = {
        nvim_cmp = true;
      };
      new_notes_location = "current_dir";
      workspaces = [
        {
          name = "vault";
          path = "/home/sajenim/.obsidian_vault";
        }
      ];
    };
  };
}
