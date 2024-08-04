{ ... }:

{
  plugins.bufdelete = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>Bdelete<cr>";
      options.desc = "Buffer Delete";
    }
    {
      mode = "n";
      key = "<leader>bw";
      action = "<cmd>Bwipeout<cr>";
      options.desc = "Buffer Wipeout";
    }
  ];
}

