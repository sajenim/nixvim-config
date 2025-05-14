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

    { # focus window left
      mode = ["n"];
      key = "<C-Left>";
      action = "<C-w>h";
      options = {
        silent = true;
      };
    }

    { # focus window down
      mode = ["n"];
      key = "<C-Down>";
      action = "<C-w>j";
      options = {
        silent = true;
      };
    }

    { # focus window up
      mode = ["n"];
      key = "<C-Up>";
      action = "<C-w>k";
      options = {
        silent = true;
      };
    }

    { # focus window right
      mode = ["n"];
      key = "<C-Right>";
      action = "<C-w>l";
      options = {
        silent = true;
      };
    }
  ];
}
