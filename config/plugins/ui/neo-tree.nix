{...}: {
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree<cr>";
      options.desc = "focus_neotree";
    }
  ];
}
