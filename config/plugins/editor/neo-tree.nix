{ ... }:

{
  plugins.neo-tree = {
    enable = true;
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

