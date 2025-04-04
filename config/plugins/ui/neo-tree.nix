{...}: {
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "\\";
      action = "<cmd>Neotree toggle<cr>";
      options.desc = "Toggle Neotree";
    }
  ];
}
