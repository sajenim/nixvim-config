{...}: {
  plugins.bufdelete = {
    enable = true;
  };

  keymaps = [
    {
      # buffer prefix
      mode = "n";
      key = "<leader>b";
      action = "<Nop>";
      options = {
        desc = "+buffer";
      };
    }

    {
      # goto next buffer
      mode = ["n"];
      key = "<leader>bn";
      action = ":bnext<cr>";
      options = {
        silent = true;
      };
    }

    {
      # goto previous buffer
      mode = ["n"];
      key = "<leader>bp";
      action = ":bprevious<cr>";
      options = {
        silent = true;
      };
    }

    {
      # delete buffer
      mode = ["n"];
      key = "<leader>bd";
      action = ":Bdelete<cr>";
      options = {
        desc = "bdelete";
        silent = true;
      };
    }

    {
      # wipeout buffer
      mode = ["n"];
      key = "<leader>bw";
      action = ":Bwipeout<cr>";
      options = {
        desc = "bwipeout";
        silent = true;
      };
    }
  ];
}
