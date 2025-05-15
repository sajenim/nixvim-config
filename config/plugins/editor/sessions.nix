{ ... }: {
  plugins.auto-session = {
    enable = true;
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
