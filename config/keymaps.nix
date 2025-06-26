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

    {
      mode = ["n"];
      key = "<leader>f";
      action = "<NOP>";
      options = {
        desc = "+find"; 
      };
    }

    {
      mode = ["n"];
      key = "<PageUp>";
      action = "<C-u>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<PageDown>";
      action = "<C-d>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<Del>";
      action = "zz";
      options = {
        silent = true;
      };
    }
  ];
}
