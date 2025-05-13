{...}: {
  globals.mapleader = " ";

  keymaps = [
    {
      mode = ["n"];
      key = "<ESC>";
      action = ":noh<CR>";
      options = {
        silent = true;
      };
    }

    { # buffer prefix
      mode = "n";
      key = "<leader>b";
      action = "<Nop>";
      options = {
        desc = "+buffer";
      };
    }

    { # goto next buffer
      mode = ["n"];
      key = "<leader>bn";
      action = ":bnext<cr>";
      options = {
        silent = true;
      };
    }

    { # goto previous buffer
      mode = ["n"];
      key = "<leader>bp";
      action = ":bprevious<cr>";
      options = {
        silent = true;
      };
    }

    { # delete buffer
      mode = ["n"];
      key = "<leader>bd";
      action = ":bdelete<cr>";
      options = {
        silent = true;
      };
    }
  ];
}
