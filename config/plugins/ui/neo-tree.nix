{...}: {
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>\\";
      action = "<cmd>Neotree<cr>";
      options.desc = "Focus Neotree";
    }
  ];
}
