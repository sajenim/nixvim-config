{ ... }: {
  plugins.auto-session = {
    enable = true;
    settings = {
      pre_save_cmds = ["Neotree close"];
      post_restore_cmds = ["Neotree show"];
    };
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>ss";
      action = ":SessionSearch<cr>";
      options = {
        desc = "Search sessions";
        silent = true;
      };
    }
  ];
}
