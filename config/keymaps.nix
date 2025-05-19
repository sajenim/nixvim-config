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

    { # prefix: find
      mode = ["n"];
      key = "<leader>f";
      action = "<NOP>";
      options = {
        desc = "+find"; 
      };
    }
  ];
}
